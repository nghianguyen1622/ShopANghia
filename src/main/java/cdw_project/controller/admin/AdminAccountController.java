package cdw_project.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.service.admin.impl.AdminAccountServiceImpl;

@Controller
public class AdminAccountController extends BaseController{
	@Autowired
	private AdminAccountServiceImpl accountService;
	
	
	@RequestMapping(value = "account" )
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("admin/account/account");
		mv.addObject("account", accountService.GetDataUser());
		return mv;
	}
	
	@RequestMapping(value = "/admin/{id}")
	public String Admin( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("account", accountService.GetDataUser());
		session.setAttribute("admin", accountService.Admin(id));
		return "redirect:"+request.getHeader("Referer");
	}

}
