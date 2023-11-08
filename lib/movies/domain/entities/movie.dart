// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final bool adult;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final String releaseDate;
  final double voteAverage;

  const Movie(
      {required this.id,
      required this.adult,
      required this.title,
      required this.backdropPath,
      required this.genreIds,
      required this.overview,
      required this.releaseDate,
      required this.voteAverage});
      
        @override
  List<Object> get props {
    return [
      id,
      adult,
      title,
      backdropPath,
      genreIds,
      overview,
      voteAverage,
    ];
  }
}
