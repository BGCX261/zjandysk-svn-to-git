package com.crm.util;

import java.util.UUID;

public class UUUtil {
	
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}

}
