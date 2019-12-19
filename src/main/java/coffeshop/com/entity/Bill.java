package coffeshop.com.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

import lombok.Data;

@Data
@Table(name = "bill")
@Entity
public class Bill implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "date_check_in")
  private Date dateCheckIn;

  @Column(name = "date_check_out")
  private Date dateCheckOut;

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

  @Column(name = "status")
  private Integer status;

  @OneToMany(mappedBy = "bill", cascade = CascadeType.ALL)
  List<Billinfo> billinfos = new ArrayList<>();
  
}