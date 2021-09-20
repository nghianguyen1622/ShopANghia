package cdw_project.controller.user;

import java.sql.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.dto.CartDTO;
import cdw_project.entity.Bills;
import cdw_project.entity.Users;
import cdw_project.service.user.BillsServiceImpl;
import cdw_project.service.user.CartServiceImpl;

@Controller
public class CartController extends BaseController{

	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	
	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();

	@RequestMapping(value = "shop/gio-hang")
	public ModelAndView Index() {

		// lấy dữ liệu slide
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", _homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", _homeService.GetDataCategorys2());
		// lay su lieu san pham
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/cart/list_cart");

		return _mvShare;
	}

	@RequestMapping(value = "shop/AddCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();

		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "shop/EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id, @PathVariable int quanty) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();

		}
		cart = cartService.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "shop/DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();

		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value = "shop/checkout" , method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/bills/checkout");
		Bills bills = new Bills();
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		if(loginInfo != null) {
			bills.setName(loginInfo.getName());
			bills.setId_user(loginInfo.getId());
			bills.setPlay_name(loginInfo.getPlay_name());
			bills.setEmail(loginInfo.getEmail());
			
		}else {
			if(loginInfo == null) {
				return new ModelAndView("redirect:dang-nhap", "message", "Vui lòng đăng nhập trước khi thanh toán!");
			}
		}
		_mvShare.addObject("bills", new Bills());
		return _mvShare;
	}
	@RequestMapping(value = "shop/checkout" , method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {
		HashMap<Long, CartDTO> carts = (HashMap<Long, CartDTO>)session.getAttribute("Cart");
		
		int soluong = cartService.TotalQuanty((HashMap<Long, CartDTO>) session.getAttribute("Cart"));
		double gia =cartService.TotalPrice((HashMap<Long, CartDTO>) session.getAttribute("Cart"));
		long millis = System.currentTimeMillis();
		Date date = new java.sql.Date(millis);
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		bill.setPlay_name(loginInfo.getPlay_name());
		bill.setQuanty(soluong);
		bill.setTotal(gia);
		bill.setDate(date);
		bill.setId_user(loginInfo.getId());
		
		if(billsService.AddBills(bill) > 0) {
	
			billsService.AddBillsDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:/shop/";
	}
}
