package com.zhangjin.uploaddownload;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyConfig implements WebMvcConfigurer {

    /*资源处理器*/
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/" + "/images/");
        registry.addResourceHandler("/static/**").addResourceLocations("/WEB-INF/" + "/static/");
    }

}