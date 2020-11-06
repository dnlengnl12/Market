package com.dyung.kim.vo;

import lombok.Data;

@Data
public class FileVO {
	private int file_no;
	private String acc_id;
	private int item_num;
	private String originalfile;
	private String savedfile;
	private int file_index;
}
