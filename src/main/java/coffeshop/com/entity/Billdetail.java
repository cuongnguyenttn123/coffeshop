package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "billdetail")
@Data
@Entity
public class Billdetail implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "id_Bill")
  private Integer idBill;

  @Column(name = "id_Food")
  private Integer idFood;

  @Column(name = "count")
  private Integer count;

  @Column(name = "price")
  private Double price;

  @Column(name = "id_Table")
  private Integer idTable;

  
}