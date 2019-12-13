package coffeshop.com.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Table(name = "tablefood")
@Entity
@Data
public class Tablefood implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;


  @ManyToOne
  @JoinColumn(name = "id_Area", nullable = false)
  private Area area;

  @OneToMany(fetch = FetchType.LAZY, mappedBy = "tablefood")
  private List<Bill> billHashSet = new ArrayList<>();

  @Column(name = "status")
  private Integer status;

  
}