package ua.com.ushop.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import ua.com.ushop.enum_.Authority;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/*shift ctrl k
* ctrl k*/
@Entity
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String firstName;
    private String username;
    private String password;
    private String email;

    transient private String confirmPassword;

    @OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL,  mappedBy = "users")
    private List<Cart> carts;




    @Enumerated(EnumType.STRING)
    private Authority authority = Authority.ROLE_USER;

    private boolean accountNonExpired = true;
    private boolean accountNonLocked = true;
    private boolean credentialsNonExpired = true;
    private boolean enabled = true;

    public User() {
    }



    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList <SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
       authorities.add(new SimpleGrantedAuthority(authority.name().toString()));
        return authorities;
    }

    public int getId() {
        return id;
    }

    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getPassword() {
        return password;
    }


    public String getUsername() {
        return username;
    }

    public String getConfirmPassword() { return confirmPassword; }

    public void setConfirmPassword(String confirmPassword) { this.confirmPassword = confirmPassword; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public boolean isAccountNonExpired() {
        return accountNonExpired;
    }


    public boolean isAccountNonLocked() {
        return accountNonLocked;
    }


    public boolean isCredentialsNonExpired() {
        return credentialsNonExpired;
    }


    public boolean isEnabled() {
        return enabled;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAuthority(Authority authority) {
        this.authority = authority;
    }

    public void setAccountNonExpired(boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }

    public void setAccountNonLocked(boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public void setCredentialsNonExpired(boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }


    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

}
