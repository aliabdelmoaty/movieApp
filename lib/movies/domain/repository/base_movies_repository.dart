import 'package:movie/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository{

  Future <List<Movie>> getNowPlaying();
  Future<List<Movie>> getPopular();
  Future<List<Movie>> getTopRated();
}