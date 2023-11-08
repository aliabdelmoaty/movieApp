class ApiConstants{
  static const String baseUrl = "https://api.themoviedb.org/3"; 
  static const String apiKey = "784dea264f57cabb19cdc02f92e2c63c"; 

  static const String pathPlayingNow = "$baseUrl/movie/now_playing?api_Key=$apiKey"; 
  static const String pathPopular =
      "$baseUrl/movie/popular?api_Key=$apiKey"; 
  static const String pathTopRated =
      "$baseUrl/movie/top_rated?api_Key=$apiKey"; 


}