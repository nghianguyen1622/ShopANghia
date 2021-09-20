package cdw_project.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import cdw_project.entity.Categorys;
import cdw_project.entity.MapperCategorys;

@Repository
public class CategorysDAO {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Categorys> GetDataCategorys(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = " SELECT id, id_categorys, id_category,title FROM categorys Where id_categorys = 1";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	public List<Categorys> GetDataCategorys1(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = " SELECT id, id_categorys, id_category,title FROM categorys Where id_categorys = 2";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	public List<Categorys> GetDataCategorys2(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = " SELECT id, id_categorys, id_category,title FROM categorys Where id_categorys = 3";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
}
