package com.app.manager.ea.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.app.manager.ea.model.Smtp;
import com.common.spring.ssh.page.Pagination;

@Component("smtpAction")
@Scope("prototype")
public class SmtpAction extends BaseEaAction {
	static Logger log = LoggerFactory.getLogger(SmtpAction.class);
	// protected baseDao baseDao;
	protected Pagination pagination;

	public String execute() throws Exception {
		get_page_data();
		return "main";
	}

	public String menu_smtp_init() throws Exception {
		get_page_data();
		return "success";
	}

	public String create() throws Exception {
		String id = getpara("id");
		Smtp smtp = new Smtp();
		baseDao.create(smtp);
		get_page_data();
		return "success";
	}

	public String delete() throws Exception {
		String id = getpara("id");
		Smtp smtpdata = new Smtp();
		smtpdata.setId(Long.parseLong(id));
		baseDao.delete(smtpdata);
		get_page_data();
		return "success";
	}

	public String update() throws Exception {
		String id = getpara("id");
		String column = ServletActionContext.getRequest()
				.getParameter("column");
		String columnValue = getpara("columnValue");
		if (column.equals("maxSize")) {
			int pageNum = Integer.parseInt(columnValue);
			if (pageNum != pagination.getMaxSize() && pageNum > 0) {
				pagination.setMaxSize(pageNum);
			}
		} else {
			Smtp smtp = (Smtp) baseDao.loadById("Smtp", Long.parseLong(id));
			BeanUtils.setProperty(smtp, column, columnValue);
			baseDao.update(smtp);
		}
		get_page_data();
		return "success";
	}

	public String get_page_data() throws Exception {
		String pageId = ServletActionContext.getRequest()
				.getParameter("pageId");
		if (pageId == null || "".equals(pageId)) {
			pageId = (String) ServletActionContext.getRequest().getSession()
					.getAttribute("pageId");
			if (pageId == null || "".equals(pageId))
				pageId = "1";
		}
		ServletActionContext.getRequest().getSession()
				.setAttribute("pageId", pageId);
		pagination.setCurrentPage(Integer.parseInt(pageId));
		List smtpList = baseDao.page("from Smtp", pagination);
		rhs.put("dataList", smtpList);
		List countList = baseDao.find("from Smtp");
		rhs.put("maxSize", pagination.getMaxSize());
		rhs.put("count", countList.size());
		rhs.put("maxPage",
				countList.size() % pagination.getMaxSize() > 0 ? countList
						.size() / pagination.getMaxSize() + 1 : countList
						.size() / pagination.getMaxSize());
		rhs.put("currentPage", Integer.parseInt(pageId));
		return "success";
	}

	public Pagination getPagination() {
		return pagination;
	}

	@Resource(name = "pagination")
	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public String setId(String id) {
		return id;
	}
}
