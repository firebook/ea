package com.app.manager.ea.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.app.manager.ea.model.User;

@Component("userAction")
@Scope("prototype")
public class UserAction extends BaseEaAction {
	
	private static Logger log = LoggerFactory.getLogger(UserAction.class);
	public User bfobject = new User();

	public String get_list_sql() {
		return "from User ";
	}

	public String list() throws Exception {
		String sql = getSearchSql(get_list_sql());
		getPageData(sql);
		return "list";
	}
	
	public String load() throws Exception {
		String id = getpara("id");
		if ("".equals(getpara("id"))) {
			rhs.put("user", null);
		} else {
			User user = (User) baseDao.loadById("User", Long.parseLong(id));
			rhs.put("user", user);
		}
		return "success";
	}
	
	public String save() throws Exception {
		if (bfobject.getId() == null || bfobject.getId().toString().equals("")) { // create
			baseDao.create(bfobject);
		} else { // edit
			baseDao.update(bfobject);
		}
		return list();
	}
	
	public String delete() throws Exception {
		String id = getpara("id");
		User bfdata = new User();
		bfdata.setId(Long.parseLong(id));
		baseDao.delete(bfdata);
		return list();
	}
	
}
