package com.cxd.bean;

import java.util.Date;

/**
 * 一场表演的信息
 * @author 15321
 *
 */
public class Concert {
	
	private Integer id;
	private String name;
	private String address;
	private String context;
	private String photo;
	private Date starttime;
	private Date endtime;
	private Integer flag;
	
	private City city;
	private Ticket ticket;
	
	
	
	
	public Ticket getTicket() {
		return ticket;
	}
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Concert [id=" + id + ", name=" + name + ", address=" + address + ", context=" + context + ", photo="
				+ photo + ", starttime=" + starttime + ", endtime=" + endtime + ", flag=" + flag + ", city=" + city
				+ ", ticket=" + ticket + "]";
	}
	
	
	
	

}
