package cdw_project.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBills implements RowMapper<Bills>{
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills bills = new Bills();
		bills.setId(rs.getLong("id"));
		bills.setId_user(rs.getLong("id_user"));
		bills.setName(rs.getString("name"));
		bills.setPlay_name(rs.getString("play_name"));
		bills.setPhone(rs.getString("phone"));
		bills.setEmail(rs.getString("email"));
		bills.setAddress(rs.getString("address"));
		bills.setDate(rs.getDate("date"));
		bills.setQuanty(rs.getInt("quanty"));
		bills.setTotal(rs.getDouble("total"));
		bills.setActive(rs.getString("active"));
		
		return bills;
	}
		

}
