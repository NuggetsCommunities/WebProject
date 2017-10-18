package com.materials.entity;

import java.io.Serializable;

/**
 * 
 * @author Allen
 * 2017年10月18日下午11:20:49
 */
public class User implements Serializable {
	private int id;
	private String name;
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
}
