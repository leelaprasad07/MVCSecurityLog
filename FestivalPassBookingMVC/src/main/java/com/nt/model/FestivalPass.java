package com.nt.model;

import lombok.Data;

@Data
public class FestivalPass 
{
	private Integer passId;
	private String visitorName;
	private String nationality;
	private String festivalCategory;
	private Object passType;
	private Integer visitingDays;
	private String email;
	
}
