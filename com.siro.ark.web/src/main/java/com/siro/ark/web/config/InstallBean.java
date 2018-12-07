package com.siro.ark.web.config;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.annotation.Configuration;

/**
 *
 */
@Configuration
public class InstallBean implements BeanPostProcessor {
    private Logger logger = LoggerFactory.getLogger(getClass());
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        logger.info("对象" + beanName + "开始实例化");
        return bean;
    }

    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
        logger.info("对象" + beanName + "实例化完成");
        return bean;
    }
}
