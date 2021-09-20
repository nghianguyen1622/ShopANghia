package cdw_project.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import cdw_project.entity.MapperSlides;
import cdw_project.entity.Slides;

@Repository
public class SlidesDAO {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<Slides> GetDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT id ,img,title,caption,date FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
}
