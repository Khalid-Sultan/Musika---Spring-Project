package com.teammusika.musika.domains;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="users",schema="musika_my")
public class User {
	@Id
//	 @GeneratedValue(strategy=GenerationType.IDENTITY)
//	private Long UserId;
	
	private String userEmail;

	private String userFirstName;
	private String userLastName;
	private String userPassword;


	@Enumerated(EnumType.STRING)
	private Privelage privelage;
	public static enum Privelage{
		Typical, Administrator
	}
}
