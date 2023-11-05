package com.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.model.User;

@Mapper
public interface UserMapper {
	
	@Select("select * from user where userID = #{userID}")
		User selectById(String userID);
}
