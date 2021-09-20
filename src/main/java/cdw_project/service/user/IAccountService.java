package cdw_project.service.user;

import org.springframework.stereotype.Service;

import cdw_project.entity.Users;

@Service
public interface IAccountService {
	public int AddAccount(Users user);
	public Users CheckAccount(Users users);
	public Users CheckPermission(Users users);
	public boolean findByEmail(String email);
	public boolean findByPlayName(String play_name);
	
	public Users MyUser(long userId);
	public void EditUser(Users users);

}
