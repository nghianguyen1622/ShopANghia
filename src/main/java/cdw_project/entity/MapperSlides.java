package cdw_project.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides>{

	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides slides = new Slides();
		slides.setId(rs.getInt("id"));
		slides.setImg(rs.getString("img"));
		slides.setTitle(rs.getString("title"));
		slides.setCaption(rs.getString("caption"));
		slides.setDate(rs.getDate("date"));
		return slides;
	}

}
