package cdw_project.dao.user;

import java.util.EmptyStackException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.MapperUsers;
import cdw_project.entity.Users;

@Repository
@Transactional
public class UserDao extends BaseDAO {

	public int AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("	name, ");
		sql.append("    play_name, ");
		sql.append("    email, ");
		sql.append("    password, ");
		sql.append("    permission ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + user.getName() + "', ");
		sql.append("    '" + user.getPlay_name() + "', ");
		sql.append("    '" + user.getEmail() + "', ");
		sql.append("    '" + user.getPassword() + "', ");
		sql.append(" 2 ");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public Users GetUserByAcc(Users users) {
		try {
			String sql = "SELECT * FROM users where play_name = '" + users.getPlay_name() + "'  ";
			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
			return result;
		} catch (EmptyStackException erdae) {
			return null;
		}

	}

	public Users CheckPermission(Users users) {
		try {
			String sql = "SELECT * FROM users where play_name = '" + users.getPlay_name() + "' and permission = 2  ";

			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());

			return result;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}

	}

	public boolean findByEmail(String email) {
		String sql = "SELECT * FROM users where email = '" + email + "' ";
		List<Users> result = _jdbcTemplate.query(sql, new MapperUsers());
		if (result.size() > 0) {
			return true;
		}
		return false;
	}
	public boolean findByPlayName(String play_name) {
		String sql = "SELECT * FROM users where play_name = '" + play_name + "' ";
		List<Users> result = _jdbcTemplate.query(sql, new MapperUsers());
		if (result.size() > 0) {
			return true;
		}
		return false;
	}

	public Users MyUser(long userId) {
		String sql = "SELECT * FROM users WHERE id = " + userId + " ";
		return _jdbcTemplate.queryForObject(sql, new MapperUsers());
	}

	public void EditUser(Users users) {
		String sql = "UPDATE users SET name = ?, email = ?  WHERE id = ? ";
		_jdbcTemplate.update(sql, users.getName(),users.getEmail(), users.getId());
	
	}

	

}
