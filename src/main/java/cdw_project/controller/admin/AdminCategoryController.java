package cdw_project.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.entity.Categorys;
import cdw_project.service.admin.impl.AdminHomeServiceImpl;
import cdw_project.service.admin.impl.AmindCategoryServiceImpl;

@Controller
public class AdminCategoryController extends BaseController {

	@Autowired
	private AdminHomeServiceImpl adminHome;

	@Autowired
	private AmindCategoryServiceImpl adminCategory;

	@RequestMapping(value = { "danhmuc" }, method = RequestMethod.GET)
	public ModelAndView Category(@ModelAttribute("categorys") Categorys categorys,Model model) {

		_mvShare.addObject("admincategory", adminHome.GetDataCategorys());
		_mvShare.addObject("productsadmin", _homeService.GetDataProducts());
		model.addAttribute("rolecategory", adminCategory.GetAllDataRoleCategorys());

		_mvShare.setViewName("admin/category/admincategory");

		return _mvShare;
	}

	@RequestMapping(value = "/deletedanhmuc/{id}")
	public String DeleteCategory(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		session.setAttribute("admincategory", adminHome.GetDataCategorys());
		session.setAttribute("deletecategory", adminCategory.DeleteCategorys(id));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping("/editcategory/{id}")
	public String updateCustomer(@ModelAttribute("Categorys") Categorys categorys, @PathVariable int id, Model model) {
		categorys = adminCategory.detailCategorys(id);
		model.addAttribute("categorys", categorys);

		model.addAttribute("rolecategory", adminCategory.GetAllDataRoleCategorys());

		return "admin/category/editcategory";
	}

	@RequestMapping("/editCategory")
	public String editCategory(@ModelAttribute("Categorys") Categorys categorys, Model model) {
		adminCategory.EditCategorys(categorys);
		model.addAttribute("admincategory", adminHome.GetDataCategorys());
		return "admin/category/admincategory";
	}
	


	@RequestMapping(value = "danhmuc", method = RequestMethod.POST)
	public String Createdanhmuc(HttpServletRequest request, HttpSession session,
			@ModelAttribute("categorys") Categorys categorys) {

		adminCategory.AddCategorys(categorys);

		return "redirect:danhmuc";

	}

}
