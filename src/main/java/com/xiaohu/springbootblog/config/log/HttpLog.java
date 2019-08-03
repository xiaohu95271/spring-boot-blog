package com.xiaohu.springbootblog.config.log;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * 请求日志打印
 * @author 13220
 */
@Aspect
@Component
public class HttpLog {

    private static final Logger logger  = LoggerFactory.getLogger(HttpLog.class);

    /**
     * 这样写是将重复的代码提取出来方便处理
     */
    @Pointcut("execution(public * com.xiaohu.springbootblog.controller.*.*(..))")
    public void log() {}

    /**
     *
     * @param joinPoint
     * 注意：该方法中的HttpServletRequest为javax.servlet.http.HttpServletRequest;
     */
    @Before("log()")
    public void doBefore(JoinPoint joinPoint) {
        logger.info("1");
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        //记录请求路径url
        logger.info("url={}",request.getRequestURL());

        //记录请求方式method
        logger.info("method={}",request.getMethod());

        //记录访问者ip
        logger.info("ip={}",request.getRemoteAddr());

        //记录访问的类方法
        logger.info("class_method={}",joinPoint.getSignature().getDeclaringTypeName()+"."+joinPoint.getSignature().getName());

        //记录传递的参数
        logger.info("args={}",joinPoint.getArgs());
    }

    @After("log()")
    public void doAfter() {
//        logger.info("2");
    }

    @AfterReturning(returning = "obj",pointcut = "log()")
    public void doAfterReturning(Object obj) {
//        logger.info("3");
        logger.info("response={}",obj);
    }


}