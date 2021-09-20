package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.entity.Users;

@Service
public interface IAmindAccountService {

	  public List<Users> GetDataUser();
	  public int Admin(int id);
}
