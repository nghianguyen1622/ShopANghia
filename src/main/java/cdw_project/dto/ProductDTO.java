package cdw_project.dto;
/*
 * định nghĩa các thuộc tính của sản phẩm
 */
import java.sql.Date;


public class ProductDTO {
	private int id;
	private String id_category;
    private String name;
    private String img;
    private String title;
    private String masanpham;
    private double gia;
    private double giathitruong;
    private int sale;
    private String tinhtrang;
    private String dungluong;
    private String mausac;
    private Date create_at;
    private Date update_at;
	public ProductDTO() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getId_category() {
		return id_category;
	}
	public void setId_category(String id_category) {
		this.id_category = id_category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public double getGiathitruong() {
		return giathitruong;
	}
	public void setGiathitruong(double giathitruong) {
		this.giathitruong = giathitruong;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getDungluong() {
		return dungluong;
	}
	public void setDungluong(String dungluong) {
		this.dungluong = dungluong;
	}
	public String getMausac() {
		return mausac;
	}
	public void setMausac(String mausac) {
		this.mausac = mausac;
	}
	public Date getCreate_at() {
		return create_at;
	}
	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}
	public Date getUpdate_at() {
		return update_at;
	}
	public void setUpdate_at(Date update_at) {
		this.update_at = update_at;
	}
	
	
}