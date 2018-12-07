package com.siro.ark.web.config;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.context.annotation.Configuration;

/**
 *
 */
@Configuration
public class Setup implements BeanFactoryPostProcessor {
    public void postProcessBeanFactory(ConfigurableListableBeanFactory configurableListableBeanFactory) throws BeansException {
        System.out.println("beanFactoryPostprocessor的作用是在beanFactory初始化之后提供一个修改的机会。......这时候bean 还没实例化（instance)");
    }
}
