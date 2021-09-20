package cdw_project.dto;
/*
 * thực thi với các trường trong datase
 */
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDTOMapper implements RowMapper<ProductDTO>{

	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDTO dto = new ProductDTO();
		dto.setId(rs.getInt("id"));
		dto.setId_category(rs.getString("id_category"));
		dto.setName(rs.getString("name"));
		dto.setImg(rs.getString("img"));
		dto.setTitle(rs.getString("title"));
		dto.setMasanpham(rs.getString("masanpham"));
		dto.setGia(rs.getDouble("gia"));
		dto.setGiathitruong(rs.getDouble("giathitruong"));
		dto.setSale(rs.getInt("sale"));
		dto.setTinhtrang(rs.getString("tinhtrang"));
		dto.setDungluong(rs.getString("dungluong"));
		dto.setMausac(rs.getString("mausac"));
		dto.setCreate_at(rs.getDate("create_at"));
		dto.setUpdate_at(rs.getDate("update_at"));
		return dto;
		
	}

}
