package com.kh.sammi;

public class LikeRealestate {
	/*
	
	REALESTATE_NAME	VARCHAR2(255 BYTE)
	REALESTATE_TYPE	VARCHAR2(50 BYTE)
	REALESTATE_CONDITION	VARCHAR2(40 BYTE)
	REALESTATE_SALEPRICE	NUMBER(20,0)
	REALESTATE_MONTHLY	NUMBER(10,0)
	REALESTATE_AREA	NUMBER(5,2)
	FLOORS	VARCHAR2(20 BYTE)	
	 */
	private String realestateName;
	private String realestateType;
	private String realestateCondition;
	private int realestateSaleprice;
	private int realestateMonthly;
	private int realestateArea;
	private String floors;
	
	public LikeRealestate (String realestateName, String realestateType, String realestateCondition,
					int realestateSaleprice, int realestateMonthly, int realestateArea, String floors) {
		this.realestateName = realestateName;
		this.realestateType = realestateType;
		this.realestateCondition = realestateCondition;
		this.realestateSaleprice = realestateSaleprice;
		this.realestateMonthly = realestateMonthly;
		this.realestateArea = realestateArea;
		this.floors = floors;
	}
	
	public String getRealestateName() {
		return realestateName;
	}
	
	public void setRealestateName(String realestateName) {
		this.realestateName = realestateName;
	}
	
	public String getRealestateType() {
		return realestateType;
	}
	
	public void setRealestateType(String realestateType) {
		this.realestateType = realestateType;
	}
	
	public String getRealestateCondition() {
		return realestateCondition;
	}
	
	public void setRealestateCondition(String realestateCondition) {
		this.realestateCondition = realestateCondition;
	}
	
	public int getRealestateSaleprice() {
		return realestateSaleprice;
	}
	
	public void setRealestateSaleprice(int realestateSaleprice) {
		this.realestateSaleprice = realestateSaleprice;
	}
	
	public int getRealestateMonthly() {
		return realestateMonthly;
	}
	
	public void setRealestateMonthly(int realestateMonthly) {
		this.realestateMonthly = realestateMonthly;
	}
	
	public int getRealestateArea() {
		return realestateArea;
	}
	
	public void setRealestateArea(int realestateArea) {
		this.realestateArea = realestateArea;
	}
	
	public String getFloors() {
		return floors;
	}
	
	public void setFloors(String floors) {
		this.floors = floors;
	}
}
