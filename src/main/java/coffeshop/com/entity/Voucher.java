package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
@Table(name = "voucher")
public class Voucher implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @Column(name = "description")
  private String description;

  @Column(name = "datestart")
  private Date datestart;

  @Column(name = "datestop")
  private Date datestop;

  @Column(name = "number")
  private Integer number;

  @Column(name = "count")
  private Integer count;

  @Column(name = "discount")
  private Integer discount;

  @Column(name = "saleoff")
  private Double saleoff;

  @OneToMany(fetch = FetchType.LAZY, mappedBy = "voucher")
  private Set<Bill> bills = new HashSet<Bill>(0);
}