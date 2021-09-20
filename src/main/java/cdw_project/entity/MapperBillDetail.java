package cdw_project.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBillDetail implements RowMapper<BillDetail>{

	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billdetail = new BillDetail();
		billdetail.setId(rs.getLong("id"));
		billdetail.setId_bills(rs.getLong("id_bills"));
		billdetail.setId_product(rs.getLong("id_product"));
		billdetail.setImg(rs.getString("img"));
		billdetail.setName_product(rs.getString("name_product"));
		billdetail.setQuanty(rs.getInt("quanty"));
		billdetail.setTotal(rs.getDouble("total"));
		return billdetail;
	}

}
