package com.blog.model;

import java.sql.Date;

public class Posts {
	public Posts(String id,String name, String title, String content,String category, Date created_at, Date updated_at,String count) {
		this.setId(id);
		this.setName(name);
		this.setTitle(title);
		this.setContent(content);
		this.setCategory(category);
		this.setCreated_at(created_at);
		this.setUpdated_at(updated_at);
		this.setCount(count);
	}

	public Posts() {

	}
	private String id;
	private String name;
	private String title;
	private String content;
	private String Category;
	private Date created_at;
	private Date updated_at;
	private String count;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

}
