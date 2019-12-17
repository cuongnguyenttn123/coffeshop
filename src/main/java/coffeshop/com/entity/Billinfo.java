package coffeshop.com.entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

@Entity
@Data
@Table(name = "billinfo")
public class Billinfo implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @ManyToOne
  @JoinColumn(name = "id_bill")
  private Bill bill;

  @ManyToOne
  @JoinColumn(name = "id_food")

  private Food food;

  @Column(name = "count")
  private Integer count;

  @Column(name = "price")
  private Integer price;

  @Column(name = "status")
  private Integer status;

  @ManyToOne
  @JoinColumn(name = "id_table")
  private Tablefood tablefood;

  
}