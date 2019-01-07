package com.blog.model;

import java.sql.Date;

public class Comments {

	public Comments(String commenter, int post_id, Date created_at, Date updated_at) {
		this.setCommenter(commenter);
		this.setPost_id(post_id);
		this.setCreated_at(created_at);
		this.setUpdated_at(updated_at);

	}

	public Comments() {

	}

	private String commenter;
	private int post_id;
	private Date created_at;
	private Date updated_at;

	public String getCommenter() {
		return commenter;
	}

	public void setCommenter(String commenter) {
		this.commenter = commenter;
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
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

}
