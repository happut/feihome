package com.feihome.support.utils;

import java.util.UUID;

import org.apache.commons.lang3.StringUtils;

public class CommonUtils {
    public static String generateUUID() {
        return StringUtils.replace(UUID.randomUUID().toString(), "-", "");
    }
    
    public static void main(String[] args) {
        for(int i=0;i<100;i++){
            System.out.println(CommonUtils.generateUUID());
        }
    }
}
