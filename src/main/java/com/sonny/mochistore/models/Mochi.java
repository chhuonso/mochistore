package com.sonny.mochistore.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "mochis")
public class Mochi {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message = "Must not be empyt, if so select None")
	private String top1;
	
	@NotEmpty(message = "Must not be empyt, if so select None")
	private String top2;
	
	@NotEmpty(message = "Must not be empyt, if so select None")
	private String top3;
	
	@NotEmpty(message = "Must not be empyt, if so select None")
	private String top4;
	
	
//  RELATIONSHIPS
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
	
	// CREATED AT AND UPDATED AT
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
	
	
	public Mochi() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTop1() {
		return top1;
	}

	public void setTop1(String top1) {
		this.top1 = top1;
	}

	public String getTop2() {
		return top2;
	}

	public void setTop2(String top2) {
		this.top2 = top2;
	}

	public String getTop3() {
		return top3;
	}

	public void setTop3(String top3) {
		this.top3 = top3;
	}

	public String getTop4() {
		return top4;
	}

	public void setTop4(String top4) {
		this.top4 = top4;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
}
