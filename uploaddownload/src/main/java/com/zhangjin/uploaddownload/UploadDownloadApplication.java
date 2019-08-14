package com.zhangjin.uploaddownload;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class UploadDownloadApplication {

    private final static Logger logger = LoggerFactory.getLogger(UploadDownloadApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(UploadDownloadApplication.class, args);
        logger.info("UploadDownloadApplication is success!");
    }
}
