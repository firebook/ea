package com.app.manager.ea.aop.svn;

import java.lang.reflect.Method;
import java.util.Iterator;

import javax.annotation.Resource;

import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.stereotype.Component;

import com.app.manager.ea.api.InfEa;
import com.app.manager.ea.model.Organize;
import com.app.manager.ea.model.User;
import com.common.config.Appconfig;
import com.common.file.FileProcessor;
import com.common.spring.ssh.dao.BaseDao;
import com.common.svn.SvnUtils;

@Aspect
@Component("genAccessFileAfterAdvice")
public class GenAccessFileAfterAdvice implements AfterReturningAdvice {
	private final Logger log = LoggerFactory
			.getLogger(GenAccessFileAfterAdvice.class);
	public BaseDao baseDao;
	protected InfEa infEa;

	public void afterReturning(Object returnValue, Method method,
			Object[] args, Object target) throws Throwable {
		User userobject = (User) baseDao.loadById("User",
				Long.parseLong(args[0].toString()));
		SvnUtils.gen_svn_apache_account(userobject.account,
				userobject.getPasswd());
		infEa.getOrganizeByOrganizegroupAlias("svn");
		String access = "[/]\nadmin=rw[groups]\n";
		for (Iterator iterator = infEa.getOrganizeByOrganizegroupAlias("svn")
				.iterator(); iterator.hasNext();) {
			Organize organize = (Organize) iterator.next();

			String user_list_string = "";
			for (Iterator iterator2 = infEa.getAllUserByOrganize(organize)
					.iterator(); iterator2.hasNext();) {
				User user = (User) iterator2.next();
				user_list_string = user_list_string + user.getAccount() + ",";
			}

			access = access + organize.getName() + "-" + organize.getId() + "="
					+ user_list_string + "\n";

		}
		for (Iterator iterator = infEa.getOrganizeByOrganizegroupAlias("svn")
				.iterator(); iterator.hasNext();) {
			Organize organize = (Organize) iterator.next();
			String group_string = organize.getName() + "-" + organize.getId()
					+ "=rw\n";
			String svn_path = "";
			while (organize.getParentModel() != null) {
				svn_path = "/" + organize.getAlias() + svn_path;
				organize = organize.getParentModel();
			}

			access = access + "["
					+ Appconfig.getValue("svn_repo_name", "svn库名称") + ":"
					+ svn_path + "]\n@" + group_string;

		}
		FileProcessor.strToDoc(Appconfig.getValue("apache_home", "")
				+ "svnaccessfile.txt", access, false);

		System.out.println("更新SVN权限" + access);

	}

	public void test() throws Throwable {

	}

	public BaseDao getBaseDao() {
		return baseDao;
	}

	@Resource(name = "eaDaoTarget")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public InfEa getInfEa() {
		return infEa;
	}

	@javax.annotation.Resource(name = "impEa")
	public void setInfEa(InfEa infEa) {
		this.infEa = infEa;
	}

}
