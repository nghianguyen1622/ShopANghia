package cdw_project.controller.admin;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;


@Controller
public class HomeAdminController extends BaseController{

	
	@RequestMapping(value = "quantri", method = RequestMethod.GET)
	public ModelAndView Admin() {
		_mvShare.setViewName("admin/index");
		
		return _mvShare;
	}

}
