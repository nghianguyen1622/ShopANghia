package cdw_project.dao.user;

/*
 * Lớp triển khai lấy sản phẩm trong database
 * phân loại sản phẩm theo id
 * phân sản phẩm theo trang
 */

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.dto.ProductDTO;
import cdw_project.dto.ProductDTOMapper;
import cdw_project.entity.BillDetail;
import cdw_project.entity.MapperBillDetail;

@Repository
public class ProductDAO extends BaseDAO {

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id ");
		sql.append(", p.id_category ");
		sql.append(", p.name ");
		sql.append(", p.img ");
		sql.append(", p.title ");
		sql.append(", p.masanpham ");
		sql.append(", p.gia ");
		sql.append(", p.giathitruong ");
		sql.append(", p.sale ");
		sql.append(", p.tinhtrang ");
		sql.append(", p.dungluong ");
		sql.append(", p.mausac ");
		sql.append(", p.create_at ");
		sql.append(", p.update_at ");
		sql.append("FROM categorys c , products p where c.id = p.id_category ");

		return sql;

	}

	private String SqlProducts() {
		StringBuffer sql = SqlString();
		return sql.toString();
	}

	public List<ProductDTO> GetDataProducts() {
		String sql = SqlProducts();
		List<ProductDTO> list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

//	private String SqlProductsByID(int id) {
//		StringBuffer sql = SqlString();
//		sql.append(" and p.id_category =  " + id + " ");
//		return sql.toString();
//	}

	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append(" and 1 = 1 ");
		sql.append(" AND  p.id_category = " + id + " ");
		return sql;
	}

	public List<ProductDTO> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductDTO> list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append(" LIMIT " + start + ", " + totalPage);
		return sql.toString();
	}

//	private String SqlProductsPaginate(int start, int end) {
//		StringBuffer sql = SqlString();
//		sql.append(" limit " + start + ", " + end);
//		return sql.toString();
//	}
//	
//	public List<ProductDTO> GetDataProductsPaginate(int start, int end) {
//		String sql = SqlProductsPaginate(start, end);
//		List<ProductDTO> list = _jdbcTemplate.query(sql, new ProductDTOMapper());
//		return list;
//	}
	public List<ProductDTO> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductDTO> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductDTOMapper());
		List<ProductDTO> listProducts = new ArrayList<ProductDTO>();
		if (listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductDTOMapper());
		}
		return listProducts;
	}

	// lấy id sản phẩm hiển thị chi tiết sản phẩm
	// lấy từ danh sách của sản phẩm
	public List<ProductDTO> GetProductByID(int id) {
		String sql = SqlProductByID(id);
		List<ProductDTO> list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append(" and 1 = 1 ");
		sql.append(" AND  p.id = " + id + " ");
		sql.append(" limit 1 ");
		return sql.toString();
	}

	// lấy sản phẩm cho vào giả hàng
	public ProductDTO FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductDTO product = _jdbcTemplate.queryForObject(sql, new ProductDTOMapper());
		return product;
	}

	public ProductDTO GetNewProduct() {
		String sql = "SELECT * FROM products where id in (select max(id) from products)";
		ProductDTO productnew = _jdbcTemplate.queryForObject(sql, new ProductDTOMapper());
		return productnew;
	}

	public List<ProductDTO> GetNewAllProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM products where id_category < 5  Order By id DESC limit 8";
		list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

	public List<ProductDTO> GetBestsellerProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM products ORDER BY  rand() limit 20";
		list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

	public List<ProductDTO> search(String text) {
		String sql = "SELECT * FROM products WHERE  ";

		if (text != null) {
			sql += "  name like '%" + text + "%'";
		}

		List<ProductDTO> listProducts = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return listProducts;
	}

	// đã bán
	public List<BillDetail> sold(long id) {
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = "SELECT * FROM billdetail where id_product = " + id + " ";
		list = _jdbcTemplate.query(sql, new MapperBillDetail());
		return list;
	}

}
