package cdw_project.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.entity.Users;
import cdw_project.service.user.BillsServiceImpl;


@Controller
public class MyOrderController extends BaseController{

	@Autowired
	private BillsServiceImpl billsService;
	
	
	@RequestMapping(value = "shop/myorder" )
	public ModelAndView Index(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("user/account/myorder");
		mv.addObject("categorys", _homeService.GetDataCategorys());
		mv.addObject("categorys1", _homeService.GetDataCategorys1());
		mv.addObject("categorys2", _homeService.GetDataCategorys2());
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  long userId = loginInfo.getId();
		  request.setAttribute("orders", billsService.MyOrder(userId));
		return mv;
	}
	@RequestMapping(value = "shop/orderdetail/{id}")
	public ModelAndView OrderDetail(HttpServletRequest request,HttpSession session,@PathVariable int id, Model model) {
		ModelAndView mv = new ModelAndView("user/account/orderdetail");
		mv.addObject("categorys", _homeService.GetDataCategorys());
		mv.addObject("categorys1", _homeService.GetDataCategorys1());
		mv.addObject("categorys2", _homeService.GetDataCategorys2());
		session.setAttribute("orderdetail",  billsService.DetailMyOrder(id));
		
		return mv;
	}
	

}
