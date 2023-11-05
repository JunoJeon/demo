package com.example.model;

import lombok.Data;

@Data
public class Notice {
	
	int noticeID;
	String noticeTitle;
	String userID;
	String noticeDate;
	String noticeContent;
	int noticeAvailable;
	
}
