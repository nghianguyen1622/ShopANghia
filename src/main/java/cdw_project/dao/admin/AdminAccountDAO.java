package cdw_project.dao.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.MapperUsers;
import cdw_project.entity.Users;

@Repository
public class AdminAccountDAO extends BaseDAO {

	public List<Users> GetDataUser() {
		List<Users> list = new ArrayList<Users>();
		String sql = " select u.id, u.name, u.play_name, u.email, u.password, r.permission, u.active from users u, role r where u.permission = r.id_role; ";
		list = _jdbcTemplate.query(sql, new MapperUsers());
		return list;
	}

	public int Admin(int id) {
		String sql = "UPDATE users SET permission = 1 WHERE id =  " + id + "";
		int list = _jdbcTemplate.update(sql);
		return list;

	}

}
