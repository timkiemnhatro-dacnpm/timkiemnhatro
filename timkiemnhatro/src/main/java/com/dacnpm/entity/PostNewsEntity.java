package com.dacnpm.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "postnews")
public class PostNewsEntity extends BaseEntity {
	@Column(name = "title", length = 50)
	private String title;

	@Column(name = "roomrates")
	private Double roomRates;

	@Column(name = "area")
	private Double area;

	@Column(name = "electricitybill")
	private Double electricityBill;

	@Column(name = "waterbill")
	private Double waterBill;

	@Column(name = "address")
	private String address;

	@Column(name = "status", length = 1)
	private int status;
	
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "roomdetail_id", referencedColumnName = "id")
    private RoomDetailEntity roomDetail;

	@ManyToOne
	@JoinColumn(name = "image_id")
	private ImageEntity image;

	@OneToMany(mappedBy = "postNew")
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public ImageEntity getImage() {
		return image;
	}

	public void setImage(ImageEntity image) {
		this.image = image;
	}

	public List<UserEntity> getUsers() {
		return users;
	}

	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}

	public RoomDetailEntity getRoomDetail() {
		return roomDetail;
	}

	public void setRoomDetail(RoomDetailEntity roomDetail) {
		this.roomDetail = roomDetail;
	}
	
	

}
