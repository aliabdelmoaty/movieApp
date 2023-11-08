import 'package:movie/core/error/exception.dart';
import 'package:movie/core/network/api_constants.dart';
import 'package:movie/core/network/error_message_Model.dart';
import 'package:movie/movies/data/models/movies_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopularMovie();
  Future<List<MovieModel>> getTopRatedMovie();

}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {

  @override
  Future<List<MovieModel>> getNowPlayingMovie()async {
    final response = await Dio().get(ApiConstants.pathPlayingNow);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  
  @override
  Future<List<MovieModel>> getPopularMovie()async {
    final response = await Dio().get(ApiConstants.pathPopular);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  
  @override
  Future<List<MovieModel>> getTopRatedMovie()async {
    final response = await Dio().get(ApiConstants.pathTopRated);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
