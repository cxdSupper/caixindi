package com.cxd.bean;


/*
 * 票的信息
 */
public class Ticket {

	private Integer id;
	private Integer concertID;
	private Integer remaining;
	private Double price;
	private Integer falg;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getConcertID() {
		return concertID;
	}
	public void setConcertID(Integer concertID) {
		this.concertID = concertID;
	}
	public Integer getRemaining() {
		return remaining;
	}
	public void setRemaining(Integer remaining) {
		this.remaining = remaining;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getFalg() {
		return falg;
	}
	public void setFalg(Integer falg) {
		this.falg = falg;
	}
	@Override
	public String toString() {
		return "Ticket [id=" + id + ", concertID=" + concertID + ", remaining=" + remaining + ", price=" + price
				+ ", falg=" + falg + " ]";
	}


	
	
	
	
}
