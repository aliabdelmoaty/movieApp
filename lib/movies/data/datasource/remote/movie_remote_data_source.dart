import 'package:movie/core/error/exception.dart';
import 'package:movie/core/network/error_message_Model.dart';
import 'package:movie/movies/data/models/movies_model.dart';
import 'package:dio/dio.dart';

class MovieRemoteDataSource {
  getNowPlayingMovies() async {
    final response = await Dio().get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=784dea264f57cabb19cdc02f92e2c63c');
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
