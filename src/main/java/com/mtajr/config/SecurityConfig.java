package com.mtajr.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        // in memory authentication

        User.UserBuilder userBuilder = User.withDefaultPasswordEncoder();

        auth.inMemoryAuthentication()
                .withUser(userBuilder.username("Nawaf").password("1").roles("ADMIN"));
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.
            authorizeRequests().
            antMatchers("/resources/**", "/*", "/css/**", "/js/**", "/images/**").
            permitAll().
            anyRequest().
            authenticated().
        and().
            formLogin().
            loginPage("/admin/login").
            loginProcessingUrl("/admin/authenticateTheUser").
            defaultSuccessUrl("/admin/list", true).
            permitAll().
        and().
            logout().logoutUrl("/admin/logout").permitAll().
        and().
            csrf().disable();

    }
}
