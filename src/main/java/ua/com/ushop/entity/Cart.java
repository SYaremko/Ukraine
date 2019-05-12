package ua.com.ushop.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne( fetch = FetchType.LAZY)
    private Products products;

    private int count;

   /* @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="users_id")*/

    @ManyToOne( fetch = FetchType.LAZY)
    private  User users;

    public Cart() {
    }


    public Cart(Products products, User users, int count) {
        this.products = products;
        this.users = users;
        this.count = count;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

       public User getUsers() {
        return users;
    }

    public void setUsers(User users) {
        this.users = users;
    }
}
