package com.dyung.kim.vo;

import lombok.Data;

@Data
public class CartVO {
	private int cart_no;
	private String acc_id;
	private int item_num;
	
	public CartVO(String acc_id, int item_num) {
		this.acc_id = acc_id;
		this.item_num = item_num;
	}
}
