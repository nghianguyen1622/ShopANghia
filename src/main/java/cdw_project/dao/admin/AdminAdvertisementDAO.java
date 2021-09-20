package cdw_project.dao.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.MapperCategorys;
import cdw_project.entity.MapperSlides;
import cdw_project.entity.Slides;
@Repository
public class AdminAdvertisementDAO extends BaseDAO{

	public List<Slides> GetDataSlide() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT id ,img,title,caption,date FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}

	public void ChangeAdvertisement(Slides slides) {
		String sql = "UPDATE slides SET img = ?, title = ?, caption = ?, date = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, slides.getImg(), slides.getTitle(), slides.getCaption(), slides.getDate(), slides.getId());
		
		
	}

	public Slides DetailAdvertisement(int id) {
		String sql = "SELECT id ,img,title,caption, date FROM slides where id = " + id + "";
	   	 return _jdbcTemplate.queryForObject(sql, new MapperSlides());
	}

}
