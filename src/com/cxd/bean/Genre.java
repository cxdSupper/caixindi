package com.cxd.bean;


/*
 * 票务类型
 */
public class Genre {
	private Integer id;
	private String types;
	private Integer concertID;
	
	private Concert concert;
	
	
	
	public Concert getConcert() {
		return concert;
	}
	public void setConcert(Concert concert) {
		this.concert = concert;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	public Integer getConcertID() {
		return concertID;
	}
	public void setConcertID(Integer concertID) {
		this.concertID = concertID;
	}
	@Override
	public String toString() {
		return "Genre [id=" + id + ", types=" + types + ", concertID=" + concertID + ", concert=" + concert + "]";
	}
	
	
	
	

}
