package com.dacnpm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "roomtype")

public class RoomTypeEntity extends BaseEntity{

	@Column(name = "name")
	private String name;

	@Column(name = "code")
	private String code;
	
	
	@OneToOne(mappedBy = "RoomType")
    private RoomDetailEntity RoomDetail;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}


	public RoomDetailEntity getRoomDetail() {
		return RoomDetail;
	}

	public void setRoomDetail(RoomDetailEntity roomDetail) {
		RoomDetail = roomDetail;
	}
	
	
}
