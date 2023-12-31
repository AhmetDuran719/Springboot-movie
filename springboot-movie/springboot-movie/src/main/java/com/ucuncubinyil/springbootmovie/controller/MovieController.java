package com.ucuncubinyil.springbootmovie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ucuncubinyil.springbootmovie.entity.Movie;
import com.ucuncubinyil.springbootmovie.service.impl.MovieServiceImpl;

@Controller
public class MovieController {

	
	private MovieServiceImpl movieServiceImpl;

	public MovieController(MovieServiceImpl movieServiceImpl) {
		super();
		this.movieServiceImpl = movieServiceImpl;
	}
	
	@GetMapping("/getAllMovies")
	public ResponseEntity<List<Movie>> getAllMovies(){
		List<Movie> movieList = movieServiceImpl.getAllMovies();
	
		return new ResponseEntity<List<Movie>>(movieList,HttpStatus.OK);
	}
	
	@GetMapping("/getAllMovies2")
	public ModelAndView getAllTutorials2() {
		List<Movie> liste = movieServiceImpl.getAllMovies();
		ModelAndView model = new ModelAndView("movies");
		model.addObject("movieList",liste);
		return model;
	}
	

	@GetMapping("/newmovie")
	public ModelAndView newMovieAdd() {
		return new ModelAndView("newmovie","command",new Movie());
	}
	
	@RequestMapping(value="/addNewMovie", method = RequestMethod.POST)
	public ModelAndView newSaveMovie(@ModelAttribute("movie") Movie movie,
			BindingResult result, ModelMap model) 
	{
		movieServiceImpl.saveMovie(movie);
		return new ModelAndView("redirect:/getAllMovies2");
		
	}
	
	@RequestMapping(value="/editmovie/{id}")
	public String editMovie(@PathVariable Long id, Model m) {
		Movie movieDetail = movieServiceImpl.movieDetail(id);
		m.addAttribute("command", movieDetail);
		return "editmovie";
	}
	
	@RequestMapping(value = "/editSaveMovie", method = RequestMethod.POST)
    public String updateMovie(@ModelAttribute("movie") Movie movie) {
    	movieServiceImpl.updateMovie(movie);
    	return "redirect:/getAllMovies2";
    }
	
	
}
