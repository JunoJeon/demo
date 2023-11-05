package com.example.model;

import java.time.LocalDate;

import com.example.util.Gender;

import lombok.Data;

@Data
public class User {
	
	String userID;
	String userPassword;
	String userName;
	String userGender;
	String userEmail;
	String userRoles;
	
}
