package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("randomboxemo")
public class RandomBox_emo implements Serializable{

	private static final long serialVersionUID = 57575L;
	
	private int randombox_pk;
	private int itemlist_no;
	private double chance; 
	
	public RandomBox_emo() {
		
	}

	public int getRandombox_pk() {
		return randombox_pk;
	}

	public void setRandombox_pk(int randombox_pk) {
		this.randombox_pk = randombox_pk;
	}

	public int getItemlist_no() {
		return itemlist_no;
	}

	public void setItemlist_no(int itemlist_no) {
		this.itemlist_no = itemlist_no;
	}

	public double getChance() {
		return chance;
	}

	public void setChance(double chance) {
		this.chance = chance;
	}

	@Override
	public String toString() {
		return "RandomBox_emo [randombox_pk=" + randombox_pk + ", itemlist_no=" + itemlist_no + ", chance=" + chance
				+ "]";
	}

	public RandomBox_emo(int randombox_pk, int itemlist_no, double chance) {
		super();
		this.randombox_pk = randombox_pk;
		this.itemlist_no = itemlist_no;
		this.chance = chance;
	}
	
	
	
	
	
}
