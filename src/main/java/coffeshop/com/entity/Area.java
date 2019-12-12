package coffeshop.com.entity;

import javax.persistence.*;

import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "area", catalog = "coffeshop")
public class Area {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "area", cascade = CascadeType.ALL)
    private Set<Dinnertable> dinnertables;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Dinnertable> getDinnertables() {
        return dinnertables;
    }

    public void setDinnertables(Set<Dinnertable> dinnertables) {
        this.dinnertables = dinnertables;
    }
}
