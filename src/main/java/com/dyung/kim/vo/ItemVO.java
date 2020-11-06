package com.dyung.kim.vo;


import lombok.Data;

@Data
public class ItemVO {
	private int item_num;
	private String acc_id;
	private String acc_name;
	private String item_option;
	private String item_price;
	private String item_title;
	private String item_contents;
	private String item_date;
	private int item_hits;
}
