package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Data
@Table(name = "food")
public class Food implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @Column(name = "image")
  private String image;

  @Column(name = "price")
  private BigDecimal price;

  @Column(name = "id_DVT")
  private Integer idDVT;


  @ManyToOne
  @JoinColumn(name = "id_category", nullable = false)
  private Foodcategory foodcategory;

  @Column(name = "description")
  private String description;

  @Column(name = "status")
  private Integer status;

  
}