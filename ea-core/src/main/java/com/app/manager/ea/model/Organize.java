package com.app.manager.ea.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import org.eclipse.jetty.util.log.Log;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.app.manager.ea.api.InfEa;
import com.common.spring.ssh.action.BaseAction;
import com.common.spring.ssh.model.BaseModel;

import com.common.string.StringProcess;

@Entity
@Table(name = "manager_ea_organize")
public class Organize extends BaseModel  {
	private final Logger log = LoggerFactory.getLogger(Organize.class);
	private Long id;
	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String name;
	public String alias;
	
	@Column(length = 2000)
	public String organizedescription;
	@Column(length = 2000)
	public String kpidescription;
	public Organize parentModel;
	private Set<Organize> childOrganizes = new HashSet<Organize>();
	private Set<Role> roles = new HashSet<Role>();
	private Set<Organizegroup> organizegroups = new HashSet<Organizegroup>();

	@ManyToMany(cascade = CascadeType.ALL, targetEntity = Organizegroup.class, fetch = FetchType.LAZY)
	@JoinTable(name = "manager_ea_organizegroup_organize", joinColumns = { @JoinColumn(name = "organize_id") }, inverseJoinColumns = { @JoinColumn(name = "organizegroup_id") })
	public Set<Organizegroup> getOrganizegroups() {
		return organizegroups;
	}
	public void setOrganizegroups(Set<Organizegroup> organizegroups) {
		this.organizegroups = organizegroups;
	}
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "parent_id", nullable = true)
	public Organize getParentModel() {
		return parentModel;
	}
	public void setParentModel(Organize parentModel) {
		this.parentModel = parentModel;
	}
	@OneToMany(mappedBy = "parentModel", cascade = CascadeType.ALL)
	public Set<Organize> getChildOrganizes() {
		return childOrganizes;
	}

	public void setChildOrganizes(Set<Organize> childOrganizes) {
		this.childOrganizes = childOrganizes;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	

	@ManyToMany(cascade = CascadeType.REFRESH, targetEntity = Role.class, fetch = FetchType.LAZY)
	@JoinTable(name = "manager_ea_organize_role", joinColumns = { @JoinColumn(name = "organize_id") }, inverseJoinColumns = { @JoinColumn(name = "role_id") })
	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	
	public String getOrganizedescription() {
		
		
		return StringProcess.cleanString(organizedescription);
	}
	public void setOrganizedescription(String organizedescription) {
		this.organizedescription = organizedescription;
	}
	public String getKpidescription() {
		return kpidescription;
	}

	public void setKpidescription(String kpidescription) {
		this.kpidescription = kpidescription;
	}

	public Long getSortNob() {
		return sortNob;
	}

	public void setSortNob(Long sortNob) {
		this.sortNob = sortNob;
	}

	public String getInputtime() {
		return inputtime;
	}

	public void setInputtime(String inputtime) {
		this.inputtime = inputtime;
	}
	
}