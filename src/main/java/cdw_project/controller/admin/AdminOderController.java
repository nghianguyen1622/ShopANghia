package cdw_project.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.service.admin.impl.AdminOderServiceImpl;

@Controller
public class AdminOderController extends BaseController {
	@Autowired
	private AdminOderServiceImpl orderService;

	@RequestMapping(value = "/order")
	public ModelAndView Order() {
		ModelAndView mv = new ModelAndView("admin/oder/oder");
		mv.addObject("oderbills", orderService.GetDataBills());
		mv.addObject("quantyconfirm", orderService.GetQuantyConfirm());
		return mv;
	}

	@RequestMapping(value = "/orderdetail/{id}")
	public String OrderDetail(HttpServletRequest request, HttpSession session, @PathVariable int id, Model model) {

		session.setAttribute("orderdetail", orderService.DetailOder(id));

		return "admin/oder/orderdetail";
	}

	@RequestMapping(value = "/confirm/{id}")
	public String Confirm(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		session.setAttribute("orderconfirm", orderService.GetDataBills());
		session.setAttribute("confirm", orderService.Confirm(id));
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/delivery/{id}")
	public String Delivery(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		session.setAttribute("orderconfirm", orderService.GetDataBills());
		session.setAttribute("delivery", orderService.Delivery(id));
		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value = "/success/{id}")
	public String Success(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		session.setAttribute("orderconfirm", orderService.GetDataBills());
		session.setAttribute("success", orderService.Success(id));
		return "redirect:" + request.getHeader("Referer");
	}
	
}
