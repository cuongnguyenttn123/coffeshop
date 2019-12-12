package coffeshop.com.entity;
// Generated Nov 20, 2018 8:44:18 AM by Hibernate Tools 5.1.7.Final

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "product", catalog = "coffeshop")
public class Product implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "PRODUCTID", unique = true, nullable = false, length = 7)
	private int productid;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CATEGORYPRODUCTID")
	private Categoryproduct categoryproduct;

	@Column(name = "NAME")
	private String name;

	@Column(name = "price")
	private String price;

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Column(name = "IMAGE")
	private String image;

	@Column(name = "DESCRIPTION")
	private String description;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATEAT", length = 19)
	private Date updateat;

	@Column(name = "ISDELETE")
	private Boolean isdelete;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private Set<Billdetail> billdetails = new HashSet<Billdetail>(0);

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private Set<Exportbill> exportbills = new HashSet<Exportbill>();


	public Product() {
	}

	public Product(int productid) {
		this.productid = productid;
	}


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getProductid() {
		return this.productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}


	public Categoryproduct getCategoryproduct() {
		return this.categoryproduct;
	}

	public void setCategoryproduct(Categoryproduct categoryproduct) {
		this.categoryproduct = categoryproduct;
	}


	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getUpdateat() {
		return this.updateat;
	}

	public void setUpdateat(Date updateat) {
		this.updateat = updateat;
	}


	public Boolean getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Boolean isdelete) {
		this.isdelete = isdelete;
	}

	public Set<Billdetail> getBilldetails() {
		return this.billdetails;
	}

	public void setBilldetails(Set<Billdetail> billdetails) {
		this.billdetails = billdetails;
	}

	public Set<Exportbill> getExportbills() {
		return this.exportbills;
	}

	public void setExportbills(Set<Exportbill> exportbills) {
		this.exportbills = exportbills;
	}



}
