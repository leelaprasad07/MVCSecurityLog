package com.nt.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "SOFTD_BOOK")
public class Books {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id;

	String title;
	String author;
	String category;
	Double price;
	Boolean available;
	private Boolean deleted = false;
}
