package com.ucuncubinyil.springbootmovie.service;

import java.util.List;

import com.ucuncubinyil.springbootmovie.entity.Movie;

public interface MovieService {

	List<Movie> getAllMovies();
	
	Movie movieDetail(Long id);
	
	Movie saveMovie(Movie movie);
	
	Movie updateMovie(Movie movie);
	
	Boolean deleteMovie(Long id);

	
	
}
