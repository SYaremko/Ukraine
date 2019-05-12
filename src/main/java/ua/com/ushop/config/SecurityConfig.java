package ua.com.ushop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.provisioning.InMemoryUserDetailsManagerConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.filter.CharacterEncodingFilter;


@Configuration
@EnableWebSecurity
@ComponentScan("ua.com.ushop.*")

public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    public UserDetailsService getUserDetailsService() {
        return userDetailsService;
    }

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }

    public InMemoryUserDetailsManagerConfigurer<AuthenticationManagerBuilder> inMemory() {
        return new InMemoryUserDetailsManagerConfigurer<>();
    }

    @Autowired
    public void configureInMemory(AuthenticationManagerBuilder auth, AuthenticationProvider provider) throws Exception {
        inMemory()
                .withUser("admin")
                .password("admin")
                .authorities("ROLE_ADMIN")
                .and()
                .configure(auth);
        auth.authenticationProvider(provider);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        http.addFilterBefore(filter, CsrfFilter.class);
        filter.setForceEncoding(true);
        http.authorizeRequests()
            .antMatchers("/*").permitAll()
            .antMatchers("/admin/**").access("hasRole('ADMIN')").and()
            .formLogin()
           .loginPage("/login")
                .defaultSuccessUrl("/index")
                .and()

                /*.usernameParameter("username")
            .passwordParameter("password")*//*.and()*/
            /*.logout().logoutUrl("/logout")*/
            /*.logoutSuccessUrl("/index")
            .logoutRequestMatcher(new AntPathRequestMatcher("/logout")).and()*/
            .csrf();
    }



}
