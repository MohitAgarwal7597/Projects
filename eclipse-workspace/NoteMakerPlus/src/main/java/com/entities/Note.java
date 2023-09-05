package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	@Column(length = 150)
	private String title;
	@Column(length = 3000)
	private String note;
	private Date addedDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Note(String title, String note, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.title = title;
		this.note = note;
		this.addedDate = addedDate;
	}
	public Note() {
		super();
	}
	
	
}
