package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;
	
	
	@RequestMapping(path="search.do", method=RequestMethod.GET, params="id")
	public ModelAndView getFilmDetails(int id) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(id);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/home.jsp");
				
		return mv;
	}
	
	@RequestMapping(path="search.do", method=RequestMethod.GET, params="keyword")
	public ModelAndView findByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> film = filmDao.findFilmByKeyword(keyword);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/result.jsp");
		
		return mv;
		
	}
	
	@RequestMapping(path="search.do", method=RequestMethod.GET, params="createFilm")
	public ModelAndView createFilm(String title, String description, int release_year, int language_id) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(release_year);
		film.setLanguageId(language_id);
		
		filmDao.createFilm(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/result.jsp");
		
		return mv;
		
	}
	
}
	

