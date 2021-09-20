package cdw_project.dao.admin;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.Categorys;
import cdw_project.entity.MapperCategorys;
import cdw_project.entity.MapperRoleCategory;
import cdw_project.entity.RoleCategory;

@Repository
public class AdminCategoryDAO extends BaseDAO {

	public List<Categorys> GetDataCategorys() {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = " SELECT c.id, r.id_categorys, c.id_category, c.title FROM categorys c, rolecategory r where r.id_role = c.id_categorys ";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	
	public List<RoleCategory> GetAllDataRoleCategorys() {
		List<RoleCategory> list = new ArrayList<RoleCategory>();
		String sql = " SELECT id_role, id_categorys FROM rolecategory; ";
		list = _jdbcTemplate.query(sql, new MapperRoleCategory());
		return list;
	}

	public int DeleteCategorys(int id) {
		String sql = "DELETE FROM categorys WHERE id = " + id + "";
		int list = _jdbcTemplate.update(sql.toString());
		return list;
	}
	
	public Categorys detailCategorys(int id) {
		String sql = "SELECT c.id, r.id_categorys, c.id_category, c.title FROM categorys c, rolecategory r where r.id_role = c.id_categorys and id = " + id + "";
	   	 return _jdbcTemplate.queryForObject(sql, new MapperCategorys());
	}

	public void EditCategorys(Categorys categorys) {
		String sql = "UPDATE categorys SET id_categorys = ?, id_category = ?, title = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, categorys.getId_categorys(), categorys.getId_category(), categorys.getTitle(), categorys.getId());
		
	}

	public int AddCategorys(Categorys categorys) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO categorys ");
		sql.append("( ");
		sql.append("	id_categorys, ");
		sql.append("    id_category, ");
		sql.append("    title ");
		sql.append(") ");
		sql.append("	VALUES ");
		sql.append("( ");
		sql.append("	'" + categorys.getId_categorys() + "', ");
		sql.append("    '" + categorys.getId_category() + "', ");
		sql.append("    '" + categorys.getTitle() +"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	

}
