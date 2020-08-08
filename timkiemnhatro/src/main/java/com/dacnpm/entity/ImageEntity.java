package com.dacnpm.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "image")
public class ImageEntity extends BaseEntity {
	@Column(name = "location")
	private String location;
	
	@OneToMany(mappedBy = "image")
	private List<PostNewsEntity> postNews = new ArrayList<>();

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<PostNewsEntity> getPostNews() {
		return postNews;
	}

	public void setPostNews(List<PostNewsEntity> postNews) {
		this.postNews = postNews;
	}
	

}
