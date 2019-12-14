package coffeshop.com.entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

@Table(name = "food")
@Entity
@Data
public class Food implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @Column(name = "price")
  private Integer price;

  @ManyToOne
  @JoinColumn(name = "id_DVT")
  private Dvt dvt;


  @ManyToOne
  @JoinColumn(name = "id_Category")
  private Foodcategory foodcategory;

  @Column(name = "status")
  private Integer status;

  
}