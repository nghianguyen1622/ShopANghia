package cdw_project.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class MapperCategorys implements RowMapper<Categorys> {

	public Categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categorys categorys = new Categorys();
		categorys.setId(rs.getInt("id"));
		categorys.setId_categorys(rs.getString("id_categorys"));
		categorys.setId_category(rs.getString("id_category"));
		categorys.setTitle(rs.getString("title"));

		return categorys;
	}
}
