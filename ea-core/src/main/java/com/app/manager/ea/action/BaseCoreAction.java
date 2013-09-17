package com.app.manager.ea.action;

import java.io.File;
import java.lang.reflect.InvocationTargetException;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.app.manager.ea.api.InfEa;
import com.app.manager.ea.model.Organize;
import com.app.manager.ea.model.User;
import com.common.spring.ssh.action.BaseAction;

import com.common.spring.ssh.dao.BaseDao;
import com.common.spring.ssh.model.BaseModel;

public class BaseCoreAction extends BaseAction {
	private final Logger log = LoggerFactory
			.getLogger(BaseCoreAction.class);
	protected InfEa infEa;
	@Resource(name = "impEa")
	public void setInfEa(InfEa infEa) {
		this.infEa = infEa;
	}
	public InfEa getInfEa() {
		return infEa;
	}	
	public Organize getCurrentProject() {
		try {
			Organize project = (Organize) getSessionValue("currnetProject");
			return project;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public Organize getCurrentDepartment() {
		try {
			Organize department = (Organize) getSessionValue("currnetDepartment");
			return department;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String getCurrentProjectId() {
		try {
			Organize project = (Organize) getSessionValue("currnetProject");
			return project.getId().toString();
		} catch (Exception e) {
			return "";
		}

	}
	public User getCurrentUser() {
		try {
			User user = (User) getSessionValue("userlogined");
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String getCurrentAccount() {
		try {
			User user = (User) getSessionValue("userlogined");
			return user.account;
		} catch (Exception e) {
		//	e.printStackTrace();
			return "";
		}

	}

	public void setUserCurrentProject(Organize organize) {
		try {
			putSessionValue("currnetProject", organize);
		} catch (Exception e) {
			e.printStackTrace();

		}
	}	

}
