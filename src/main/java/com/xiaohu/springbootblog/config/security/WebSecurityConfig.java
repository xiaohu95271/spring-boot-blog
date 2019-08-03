//package com.xiaohu.springbootblog.config.security;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
///**
// * EnableGlobalMethodSecurity 开启security注解
// *
// * @author 13220
// */
//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//
//    @Bean
//    @Override
//    protected AuthenticationManager authenticationManager() throws Exception {
//        return super.authenticationManager();
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        //允许所有用户访问"/"和"/home"
//        http.authorizeRequests()
//                .antMatchers("/global/**","/static/**").permitAll()
//                //其他地址的访问均需验证权限
//                .anyRequest().authenticated()
//                .and()
//                .formLogin()
////                  //指定登录页是"/login"
//                .loginPage("/login")
////                //登录成功后默认跳转到"list"
//                .defaultSuccessUrl("/hello")
//                .permitAll()
//                .and()
//                .logout()
////                 //退出登录后的默认url是"/home"
//                .logoutSuccessUrl("/hello2")
//                .permitAll();
//    }
//
//    @Override
//    public void configure(WebSecurity web) throws Exception {
//        //解决静态资源被拦截的问题
//        web.ignoring().antMatchers("/global/**","/static/**");
//    }
//}