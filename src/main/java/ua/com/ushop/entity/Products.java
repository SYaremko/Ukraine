package ua.com.ushop.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;

@Entity
@Table(name = "products", schema = "db_shop")
public class Products {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private int price;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "products")
    private List<Cart> carts;

   /* private String brand;*/

   /* private String seo_words;
    private String seo_description;*/
    private String mini_description;
    private String picture;

   /* private String description;*/
    private String mini_features;
  /*  private String features;*/
    /*private Calendar datetime;*/
    /*private int new_;
    private int leader;*/
    /*private int sale;*/
    private int visible;
    private int quantity;
    /*private int count;*/
    /*private String type_tovara;*/
  /*  private int brand_id;*/
    /*private int vote;
    private float votes;*/

    public Products() {
    }


    public int getId() { return id; } public void setId(int id) { this.id = id; }

    public String getTitle() { return title; } public void setTitle(String title) { this.title = title; }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

    /*public int getPrice() { return price; } public void setPrice(int price) { this.price = price; }
    public List<OrderDetail> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(List<OrderDetail> orderDetail) {
        this.orderDetail = orderDetail;
    }
*/
   /* public String getBrand() { return brand; } public void setBrand(String brand) { this.brand = brand; }*/

    /*public String getSeo_words() { return seo_words; } public void setSeo_words(String seo_words) { this.seo_words = seo_words; }

    public String getSeo_description() { return seo_description; } public void setSeo_description(String seo_description) { this.seo_description = seo_description; }
*/
    public String getMini_description() { return mini_description; } public void setMini_description(String mini_description) { this.mini_description = mini_description; }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    /* public byte getImage() { return image; } public void setImage(byte image) { this.image = image; }*/

   /* public String getDescription() { return description; } public void setDescription(String description) { this.description = description; }
*/
    public String getMini_features() { return mini_features; } public void setMini_features(String mini_features) { this.mini_features = mini_features; }

   /* public String getFeatures() { return features; } public void setFeatures(String features) { this.features = features; }

    public Calendar getDatetime() { return datetime; } public void setDatetime(Calendar datetime) { this.datetime = datetime; }

    public int getNew_() { return new_; } public void setNew_(int new_) { this.new_ = new_; }

    public int getLeader() { return leader; } public void setLeader(int leader) { this.leader = leader; }

    public int getSale() { return sale; } public void setSale(int sale) { this.sale = sale; }
*/
    public int getVisible() { return visible; } public void setVisible(int visible) { this.visible = visible; }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    /* public int getCount() { return count; } public void setCount(int count) { this.count = count; }

    public String getType_tovara() { return type_tovara; } public void setType_tovara(String type_tovara) { this.type_tovara = type_tovara; }

    public int getBrand_id() { return brand_id; } public void setBrand_id(int brand_id) { this.brand_id = brand_id; }
*/
   /* public int getVote() { return vote; } public void setVote(int vote) { this.vote = vote; }

    public float getVotes() { return votes; } public void setVotes(float votes) { this.votes = votes; }

*/

}

