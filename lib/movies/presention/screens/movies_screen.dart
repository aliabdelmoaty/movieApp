import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/movies/data/datasource/remote/movie_remote_data_source.dart';
import 'package:movie/movies/data/repository/movies_repository.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';
import 'package:movie/movies/domain/usecases/get_now_playing_movies.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMoviesRepository moviesRepository =
        MovieRepository(baseMovieRemoteDataSource);
    final result =
        await GetNowPlayingMoviesUseCase(baseMoviesRepository: moviesRepository)
            .execute();
    print(result);
  }
}
