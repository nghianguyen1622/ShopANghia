package cdw_project.controller.admin;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;

import cdw_project.entity.Slides;
import cdw_project.service.admin.impl.AdminAdvertisementServiceIpml;

@Controller
public class AdminAdvertisementController extends BaseController {
	
	@Autowired 
	private AdminAdvertisementServiceIpml AdvertisementService;
	
	
	@RequestMapping(value = "/advertisement")
	public ModelAndView Order() {
		ModelAndView mv = new ModelAndView("admin/advertisement/advertisement");
		mv.addObject("advertisement", AdvertisementService.GetDataSlide());
		
		return mv;
	}
	
	@RequestMapping("/advertisement/{id}")
	public String updateCustomer(@ModelAttribute("advertisement") Slides slides, @PathVariable int id, Model model) {
		slides = AdvertisementService.DetailAdvertisement(id);
		model.addAttribute("slides", slides);

		return "admin/advertisement/changeadvertisement";
	}

	@RequestMapping("/changeadvertisement")
	public String editCategory(HttpServletRequest request,@ModelAttribute("advertisement") Slides slides, Model model) {
		
		long millis = System.currentTimeMillis();
		Date date = new java.sql.Date(millis);
		slides.setDate(date);
		AdvertisementService.ChangeAdvertisement(slides);
		model.addAttribute("slides", AdvertisementService.GetDataSlide());
		return "redirect:advertisement";
	}

}
