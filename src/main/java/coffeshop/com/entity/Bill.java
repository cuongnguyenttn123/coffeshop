package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "bill")
@Entity
public class Bill implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "date_checkin")
  private Date dateCheckin;

  @Column(name = "date_checkout")
  private Date dateCheckout;

  @ManyToOne
  @JoinColumn(name = "id_Table", nullable = false)
  private Tablefood tablefood;

  @ManyToOne
  @JoinColumn(name = "id_Account", nullable = false)
  private Employee account;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "id_KM")
  private Voucher voucher;

  @Column(name = "id_Status")
  private Integer idStatus;

  
}