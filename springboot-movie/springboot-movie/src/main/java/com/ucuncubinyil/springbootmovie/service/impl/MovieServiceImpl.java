package com.ucuncubinyil.springbootmovie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ucuncubinyil.springbootmovie.entity.Movie;
import com.ucuncubinyil.springbootmovie.repository.MovieRepository;
import com.ucuncubinyil.springbootmovie.service.MovieService;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	private final MovieRepository movieRepository ;

	public MovieServiceImpl(MovieRepository movieRepository) {
		this.movieRepository = movieRepository;
	}

	@Override
	public List<Movie> getAllMovies() {
		
		List<Movie> movieList = movieRepository.findAll();
		return movieList;
	}
	@Override
	public Movie movieDetail (Long id) {
		
		 Movie movieDetail = movieRepository.getOne(id);
		return movieDetail;
	}

	@Override
	public Movie saveMovie (Movie movie) {
	 Movie savedMovie =	movieRepository.save(movie);
		return savedMovie;
	}

	@Override
	public Movie updateMovie(Movie movie) {
		Movie updateMovie = movieRepository.getOne(movie.getId());
		updateMovie.setTitle(movie.getTitle());
		updateMovie.setDescription(movie.getDescription());
		updateMovie.setImageUrl(movie.getImageUrl());
		updateMovie.setMoviePrice(movie.getMoviePrice());
		
		Movie updatedMovie = movieRepository.save(updateMovie); 
		return updatedMovie;
	}

	@Override
	public Boolean deleteMovie(Long id) {
		movieRepository .deleteById(id);
		return true;
	}

}
