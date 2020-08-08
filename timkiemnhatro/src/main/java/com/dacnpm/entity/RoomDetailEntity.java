package com.dacnpm.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "roledetail")
public class RoomDetailEntity extends BaseEntity{
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "roomates")
	private Double roomRates;
	
	@Column(name = "area")
	private Double area;
	
	@Column(name = "electricitybill")
	private Double electricityBill;
	
	@Column(name = "waterbill")
	private Double waterBill;
	
	@Column(name = "content", columnDefinition = "TEXT")
	private String content;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "status",length = 1)
	private Integer status;
	
	@OneToOne(mappedBy = "roomDetail")
    private PostNewsEntity postnews;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "roomtype_id", referencedColumnName = "id")
	private RoomTypeEntity RoomType;
	
	@OneToMany(mappedBy = "roomDetail")
	private List<UserEntity> users = new ArrayList<>();
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Double getRoomRates() {
		return roomRates;
	}
	
	public void setRoomRates(Double roomRates) {
		this.roomRates = roomRates;
	}
	
	public Double getArea() {
		return area;
	}
	
	public void setArea(Double area) {
		this.area = area;
	}
	public Double getElectricityBill() {
		return electricityBill;
	}
	
	public void setElectricityBill(Double electricityBill) {
		this.electricityBill = electricityBill;
	}
	
	public Double getWaterBill() {
		return waterBill;
	}
	
	public void setWaterBill(Double waterBill) {
		this.waterBill = waterBill;
	}
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public Integer getStatus() {
		return status;
	}
	
	public void setStatus(Integer status) {
		this.status = status;
	}

	public PostNewsEntity getPostnews() {
		return postnews;
	}

	public void setPostnews(PostNewsEntity postnews) {
		this.postnews = postnews;
	}

	public RoomTypeEntity getRoomType() {
		return RoomType;
	}

	public void setRoomType(RoomTypeEntity roomType) {
		RoomType = roomType;
	}

	public List<UserEntity> getUsers() {
		return users;
	}

	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}
	

}
