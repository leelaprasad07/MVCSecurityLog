package com.nt.entity;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
public class ModelBook {
	Long id;
	String title;
	String author;
	String category; 
	Double price;
	Boolean available;
}
