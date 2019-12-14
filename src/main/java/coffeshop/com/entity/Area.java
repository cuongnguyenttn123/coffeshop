package coffeshop.com.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

import lombok.Data;

@Entity
@Data
@Table(name = "area")
public class Area implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;
  @OneToMany(fetch = FetchType.LAZY, mappedBy = "area")
  private List<Tablefood> tablefoods = new ArrayList<>();
  
}