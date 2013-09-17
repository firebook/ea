package com.app.manager.template.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.app.manager.ea.action.BaseEaAction;
import com.app.manager.template.model.Lingli;

@Component("lingliAction")
@Scope("prototype")
public class LingliAction extends BaseEaAction {
	
	private static Logger log = LoggerFactory.getLogger(LingliAction.class);
	public Lingli bfobject = new Lingli();

	public String get_list_sql() {
		return "from Lingli where projectId='" + getCurrentProjectId() + "'";
	}

	public String list() throws Exception {
		String sql = getSearchSql(get_list_sql());
		getPageData(sql);
		return "list";
	}
	
	public String load() throws Exception {
		String id = getpara("id");
		if ("".equals(getpara("id"))) {
			rhs.put("lingli", null);
		} else {
			Lingli lingli = (Lingli) baseDao.loadById("Lingli", Long.parseLong(id));
			rhs.put("lingli", lingli);
		}
		return "success";
	}
	
	public String save() throws Exception {
		if (bfobject.getId() == null || bfobject.getId().toString().equals("")) { // create
			bfobject.setProjectId(getCurrentProjectId());
			baseDao.create(bfobject);
		} else { // edit
			baseDao.update(bfobject);
		}
		return list();
	}
	
	public String delete() throws Exception {
		String id = getpara("id");
		Lingli bfdata = new Lingli();
		bfdata.setId(Long.parseLong(id));
		baseDao.delete(bfdata);
		return list();
	}
	
}
