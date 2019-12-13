package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "employee")
@Entity
@Data
public class Employee implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "username")
  private String username;

  @Column(name = "password")
  private String password;

  @Column(name = "name")
  private String name;

  @Column(name = "avt")
  private String avt;

  @Column(name = "email")
  private String email;

  @Column(name = "address")
  private String address;

  @Column(name = "phone")
  private String phone;

  
}