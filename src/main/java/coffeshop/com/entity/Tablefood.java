package coffeshop.com.entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

@Table(name = "tablefood")
@Data
@Entity
public class Tablefood implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @ManyToOne
  @JoinColumn(name = "id_area")
  private Area area;

  @Column(name = "id_bill")
  private Integer idBill;

  @Column(name = "status")
  private Integer status;

  
}