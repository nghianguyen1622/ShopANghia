package cdw_project.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.entity.Categorys;
import cdw_project.entity.Users;
import cdw_project.service.user.AccountServiceImpl;

@Controller
public class MyAccountController extends BaseController{
	
	@Autowired
	private AccountServiceImpl accountService;
	
	@RequestMapping(value = "shop/myaccount" )
	public ModelAndView Index(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("user/account/myaccount");
		mv.addObject("categorys", _homeService.GetDataCategorys());
		mv.addObject("categorys1", _homeService.GetDataCategorys1());
		mv.addObject("categorys2", _homeService.GetDataCategorys2());
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  long userId = loginInfo.getId();
		  request.setAttribute("myaccount", accountService.MyUser(userId));
		return mv;
	}
	

	@RequestMapping("shop/updateUser")
	public ModelAndView doUpdateCustomer(HttpServletRequest request, HttpSession session,@ModelAttribute("Users")Users users, Model model) {
		ModelAndView mv = new ModelAndView("user/account/editaccount");
		mv.addObject("categorys", _homeService.GetDataCategorys());
		mv.addObject("categorys1", _homeService.GetDataCategorys1());
		mv.addObject("categorys2", _homeService.GetDataCategorys2()); 
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
//		accountService.EditUser(users);
		model.addAttribute("myaccount", accountService.MyUser(userId));
		return mv;
	}
	
	
	@RequestMapping(value = "shop/updateUsers")
	public String ResultUpdate(HttpServletRequest request, HttpSession session,
			@ModelAttribute("Users")Users users, Model model) {
		ModelAndView mv = new ModelAndView("user/account/editaccount");
		mv.addObject("categorys", _homeService.GetDataCategorys());
		mv.addObject("categorys1", _homeService.GetDataCategorys1());
		mv.addObject("categorys2", _homeService.GetDataCategorys2()); 
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
		accountService.EditUser(users);
		model.addAttribute("myaccount", accountService.MyUser(userId));

		return "redirect:/shop/myaccount";

	}


}
