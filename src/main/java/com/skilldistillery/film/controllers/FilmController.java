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
		List<Film> films = filmDao.findFilmByKeyword(keyword);
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/keyword.jsp");

		
		return mv;
		
	}

	
	@RequestMapping(path="updateFilm.do", method=RequestMethod.GET )
	public ModelAndView updateFilm( String title, String description, int releaseYear, int rentalDuration, int length, double replacementCost, String rating ) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setRentalDuration(rentalDuration);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		
		filmDao.updateFilm(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/editFilm.jsp");
		
		return mv;
		
	}
	
	@RequestMapping(path="create.do", method=RequestMethod.GET)
	public ModelAndView createFilm( String title, String description, int releaseYear, int rentalDuration, int length, double replacementCost, String rating ) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setRentalDuration(rentalDuration);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		
		filmDao.createFilm(film);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/home.jsp");
		
		return mv;
		
	}
	
	@RequestMapping(path="goToUpdateFilm.do", method=RequestMethod.GET)
	public ModelAndView goToUpdateFilm() {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("WEB-INF/editFilm.jsp");
		return mv;
	}

	

}

	

