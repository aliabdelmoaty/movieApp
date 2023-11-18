import 'package:movie/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.adult,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.releaseDate,
      required super.voteAverage});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      adult: json['adult'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      overview: json['overview'],
      releaseDate: json['release_date'],

      ///TODO: check this
      voteAverage: json['vote_average']);
}
