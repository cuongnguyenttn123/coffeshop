package coffeshop.com.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

import lombok.Data;

@Data
@Table(name = "foodcategary")
@Entity
public class Foodcategory implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @Column(name = "description")
  private String description;

  @Column(name = "status")
  private Integer status;
  @OneToMany(mappedBy = "foodcategory")
  List<Food> foodList;
  
}