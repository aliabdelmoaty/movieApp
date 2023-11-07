import 'package:movie/movies/domain/entities/movie.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase({required this.baseMoviesRepository});

  Future<List<Movie>> execute() async {
    return await baseMoviesRepository.getPopular();
  }
}
