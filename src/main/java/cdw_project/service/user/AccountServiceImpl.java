package cdw_project.service.user;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.user.UserDao;
import cdw_project.entity.Users;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UserDao userDao = new UserDao();

	public int AddAccount(Users user) {
		// mã hóa mật khẩu với BCrypt
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return userDao.AddAccount(user);
	}

	public Users CheckAccount(Users user) {
		String pass = user.getPassword();
		user = userDao.GetUserByAcc(user);
		if (user != null) {
			if (BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {

				return null;
			}
		}
		return null;
	}

	public Users CheckPermission(Users users) {
		users = userDao.CheckPermission(users);

		if (users != null) {
			return users;
		}
		return null;
	}

	public boolean findByEmail(String email) {
		
		return userDao.findByEmail(email);
	}
	
	public boolean findByPlayName(String play_name) {
		// TODO Auto-generated method stub
		return userDao.findByPlayName(play_name);
	}

	public Users MyUser(long userId) {
		
		return userDao.MyUser(userId);
	}
	public void EditUser(Users users) {
		userDao.EditUser(users);
		
	}

	

}
