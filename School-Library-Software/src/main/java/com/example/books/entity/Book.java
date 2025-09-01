package com.example.books.entity;


import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.Table;
 
@Entity

@Table(name = "book_tb")

public class Book {
 
	@Id

	@GeneratedValue(strategy = GenerationType.AUTO)

	private int id;

	private String name;

	private String author;

	private int price;

	private String status; // true-available and false-borrowed

	private int borrowedForDays;

	public int getId() {

		return id;

	}
 
	public void setId(int id) {

		this.id = id;

	}
 
	public String getName() {

		return name;

	}
 
	public void setName(String name) {

		this.name = name;

	}
 
	public String getAuthor() {

		return author;

	}
 
	public void setAuthor(String author) {

		this.author = author;

	}
 
	public int getPrice() {

		return price;

	}
 
	public void setPrice(int price) {

		this.price = price;

	}
 
	public String getStatus() {

		return status;

	}
 
	public void setStatus(String status) {

		this.status = status;

	}
 
	public int getBorrowedForDays() {

		return borrowedForDays;

	}
 
	public void setBorrowedForDays(int borrowedForDays) {

		this.borrowedForDays = borrowedForDays;

	}
 
}
 
