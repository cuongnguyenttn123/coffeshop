package coffeshop.com.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

@Data
@Entity
@Table(name = "employee")
public class Employee implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "user_name")
  private String userName;

  @Column(name = "pass_word")
  private String passWord;

  @Column(name = "name")
  private String name;

  @Column(name = "email")
  private String email;

  @Column(name = "address")
  private String address;

  @Column(name = "avt")
  private String avt;

  @Column(name = "phone")
  private String phone;

  @ManyToMany
  @JoinTable(
          name = "role_user",
          joinColumns = @JoinColumn(name = "user_id"),
          inverseJoinColumns = @JoinColumn(name = "role_id"))
  List<Role> roles = new ArrayList<>();


  @Transient
  public List<GrantedAuthority> getAuthorities() {
    List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
    for (Role position: this.roles) {
      authorities.add(new SimpleGrantedAuthority(position.getName()));
    }
    return authorities;
  }
  
}