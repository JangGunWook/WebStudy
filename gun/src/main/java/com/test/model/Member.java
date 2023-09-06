package com.test.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Member {
	
	private int no;
	private String name;
	private char gender;
	private int height;
	private int weight;
	private int trainer;
	private String photopath;
	private String phone_number;
	private String email;

}
