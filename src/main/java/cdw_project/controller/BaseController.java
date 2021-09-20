package cdw_project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.admin.HomeAdminController;
import cdw_project.service.user.HomeServiceImpl;

@Controller
public class BaseController {
	
	@Autowired
	protected HomeServiceImpl _homeService;
	protected HomeAdminController _homeAdminController;
	
	public ModelAndView _mvShare = new ModelAndView();
	
	

}
