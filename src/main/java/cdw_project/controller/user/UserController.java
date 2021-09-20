package cdw_project.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.entity.Users;
import cdw_project.service.user.AccountServiceImpl;

@Controller
public class UserController extends BaseController {

	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	public ModelAndView _mvShare = new ModelAndView();

	@RequestMapping(value = "shop/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {

		_mvShare.addObject("slides", _homeService.GetDataSlide());
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", _homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", _homeService.GetDataCategorys2());
		// lay su lieu san pham
		_mvShare.addObject("products", _homeService.GetDataProducts());

		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());

		return _mvShare;

	}

	// dang ki
	@RequestMapping(value = "shop/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
//		int count = accountService.AddAccount(user);

		if (!accountService.findByEmail(user.getEmail())) {

			_mvShare.addObject("status", "Đăng kí tài khoản thành công!");
			accountService.AddAccount(user);

		} else {
			_mvShare.addObject("status1", "Tài khoản email đã tồn tại!");
		}
		
		
		if (!accountService.findByPlayName(user.getPlay_name())) {

			_mvShare.addObject("status", "Đăng kí tài khoản thành công!");
			accountService.AddAccount(user);

		} else {
			_mvShare.addObject("status2", "Người dùng đã tồn tại!");
		}

//		if (count > 0) {
//			_mvShare.addObject("status", "Đăng kí tài khoản thành công!");
//		} else {
//			_mvShare.addObject("status", "Đăng kí tài khoản thất bại!");
//		}

//		_mvShare.addObject("status", true);
		_mvShare.setViewName("user/account/register");
		return _mvShare;

	}

	// dang nhap
	@RequestMapping(value = "shop/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {

		_mvShare.addObject("slides", _homeService.GetDataSlide());
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", _homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", _homeService.GetDataCategorys2());
		// lay su lieu san pham
		_mvShare.addObject("products", _homeService.GetDataProducts());

		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());

		return _mvShare;

	}

	@RequestMapping(value = "shop/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Loginn(HttpSession session, HttpServletRequest request, @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);
		try {
			if (user != null) {
				if (accountService.CheckPermission(user) != null) {
					_mvShare.setViewName("redirect:/shop/");
					session.setAttribute("LoginInfo", user);
				} else {
					_mvShare.setViewName("redirect:/quantri");
					session.setAttribute("LoginInfo", user);
				}

			} else {
				_mvShare.addObject("statusLogin", "Đăng nhập thất bại!");
			}
		} catch (EmptyResultDataAccessException e) {
			return new ModelAndView("forward:index.jsp", "messsage", "");
		}
		return _mvShare;

	}

	// dang xuat
	@RequestMapping(value = "shop/dang-xuat", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");

	}

}
