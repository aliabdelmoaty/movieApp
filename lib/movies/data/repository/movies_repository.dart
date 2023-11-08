import 'package:dartz/dartz.dart';
import 'package:movie/core/error/exception.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies/data/datasource/remote/movie_remote_data_source.dart';
import 'package:movie/movies/domain/entities/movie.dart';
import 'package:movie/movies/domain/repository/base_movies_repository.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopular() async{
    final result = await baseMovieRemoteDataSource.getPopularMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRated()async {
  final result = await baseMovieRemoteDataSource.getTopRatedMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.message));
    }
  }
}
