package cdw_project.dao.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.dto.ProductDTO;
import cdw_project.dto.ProductDTOMapper;

@Repository
public class AdminProductDAO extends BaseDAO {

	public List<ProductDTO> GetDataProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT p.id, c.id_category, p.name, p.img, p.title, p.masanpham, p.gia, p.giathitruong, p.sale, p.tinhtrang, p.dungluong, p.mausac, p.create_at, p.update_at From products p , categorys c WHERE p.id_category = c.id";
		list = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return list;
	}

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append(
				"SELECT p.id, c.id_category, p.name, p.img, p.title, p.masanpham, p.gia, p.giathitruong, p.sale, p.tinhtrang, p.dungluong, p.mausac, p.create_at, p.update_at From products p , categorys c WHERE p.id_category = c.id");
		return sql;
	}

	private String SqlProductByPaginate(int start, int totalPage) {
		StringBuffer sql = SqlString();
		sql.append(" LIMIT " + (start - 1) + "," + totalPage);
		return sql.toString();
	}

	public List<ProductDTO> GetDataProductsPaginate(int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlString();
		List<ProductDTO> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductDTOMapper());
		List<ProductDTO> listProducts = new ArrayList<ProductDTO>();
		if (listProductsByID.size() > 0) {
			String sql = SqlProductByPaginate(start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductDTOMapper());
		}

		return listProducts;
	}

	public ProductDTO DetailProduct(int id) {
		String sql = "SELECT p.id, c.id_category, p.name, p.img, p.title, p.masanpham, p.gia, p.giathitruong, p.sale, p.tinhtrang, p.dungluong, p.mausac, p.create_at, p.update_at From products p , categorys c WHERE p.id_category = c.id AND p.id = "
				+ id + "";
		return _jdbcTemplate.queryForObject(sql, new ProductDTOMapper());
	}

	public int DeleteProduct(int id) {
		String sql = "DELETE FROM products WHERE id = " + id + "";
		int list = _jdbcTemplate.update(sql.toString());
		return list;

	}
	
	public int AddProduct(ProductDTO productsDto) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO products ");
		sql.append("( ");
		sql.append("	id_category, ");
		sql.append("    name, ");
		sql.append("    img, ");
		sql.append("    title, ");
		sql.append("    masanpham, ");
		sql.append("    gia, ");
		sql.append("    giathitruong, ");
		sql.append("    sale, ");
		sql.append("    tinhtrang, ");
		sql.append("    dungluong, ");
		sql.append("    mausac, ");
		sql.append("    create_at ");
//		sql.append("    update_at ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'"+productsDto.getId_category()+"', ");
		sql.append("    '"+productsDto.getName()+"', ");
		sql.append("    '"+productsDto.getImg()+"', ");
		sql.append("    '"+productsDto.getTitle()+"', ");
		sql.append("    '"+productsDto.getMasanpham()+"', ");
		sql.append("    '"+productsDto.getGia()+"', ");
		sql.append("    '"+productsDto.getGiathitruong()+"', ");
		sql.append("    '"+productsDto.getSale()+"', ");
		sql.append("    '"+productsDto.getTinhtrang()+"', ");
		sql.append("    '"+productsDto.getDungluong()+"', ");
		sql.append("    '"+productsDto.getMausac()+"', ");
		sql.append("    '"+productsDto.getCreate_at()+"' ");
//		sql.append("    '"+productsDto.getUpdate_at()+"' ");
		sql.append(")");

		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;

	}
	public void EditProduct(ProductDTO productsDto) {
		String sql = "UPDATE products SET id_category = ?, name = ?, img = ?, title = ?, masanpham = ?, gia = ?, giathitruong = ?, sale = ?, tinhtrang = ?, dungluong = ?, mausac = ?, update_at = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, productsDto.getId_category(), productsDto.getName(), productsDto.getImg(), productsDto.getTitle(), productsDto.getMasanpham(), productsDto.getGia(), productsDto.getGiathitruong(), productsDto.getSale(),productsDto.getTinhtrang(), productsDto.getDungluong(), productsDto.getMausac(), productsDto.getUpdate_at(), productsDto.getId());
	}

}
