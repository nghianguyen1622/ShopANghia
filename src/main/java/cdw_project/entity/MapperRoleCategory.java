package cdw_project.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperRoleCategory implements RowMapper<RoleCategory> {

	public RoleCategory mapRow(ResultSet rs, int rowNum) throws SQLException {
		RoleCategory roleCategory = new RoleCategory();
		roleCategory.setId_role(rs.getLong("id_role"));
		roleCategory.setId_categorys(rs.getString("id_categorys"));
		return roleCategory;
	}

}
