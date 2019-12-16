package coffeshop.com.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

import lombok.Data;

@Entity
@Data
@Table(name = "role")
public class Role implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", insertable = false, nullable = false)
  private Integer id;

  @Column(name = "name")
  private String name;

  @ManyToMany
  @JoinTable(
          name = "role_user",
          joinColumns = @JoinColumn(name = "role_id"),
          inverseJoinColumns = @JoinColumn(name = "user_id"))

  private List<Employee> employees = new ArrayList<>();
  
}