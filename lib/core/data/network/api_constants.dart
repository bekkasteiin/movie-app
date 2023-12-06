import 'package:movies_app/tv_shows/domain/usecases/get_season_details_usecase.dart';

class ApiConstants {
  static const String apiKey = '3cbf4b9abb8eda491146fbe952eef156';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  static const String baseBackdropUrl = 'https://image.tmdb.org/t/p/w1280';
  static const String basePosterUrl = 'https://image.tmdb.org/t/p/w500';
  static const String baseProfileUrl = 'https://image.tmdb.org/t/p/w300';
  static const String baseStillUrl = 'https://image.tmdb.org/t/p/w500';
  static const String baseAvatarUrl = 'https://image.tmdb.org/t/p/w185';
  static const String baseVideoUrl = 'https://www.youtube.com/watch?v=';

  static const String moviePlaceHolder =
      'https://davidkoepp.com/wp-content/themes/blankslate/images/Movie%20Placeholder.jpg';

  static const String castPlaceHolder =
      'https://palmbayprep.org/wp-content/uploads/2015/09/user-icon-placeholder.png';

  static const String avatarPlaceHolder =
      'https://cdn.pixabay.com/photo/2018/11/13/21/43/avatar-3814049__480.png';

  static const String stillPlaceHolder =
      'https://popcornsg.s3.amazonaws.com/gallery/1577405144-six-year.png';

  // movies paths
  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey&language=ru-RU';

  static const String popularMoviesPath =
      '$baseUrl/movie/popular?api_key=$apiKey&language=ru-RU';

  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$apiKey&language=ru-RU';

  static String getMovieDetailsPath(int movieId) {
    return '$baseUrl/movie/$movieId?api_key=$apiKey&append_to_response=videos,credits,reviews,similar&language=ru-RU';
  }

  static String getAllPopularMoviesPath(int page) {
    return '$baseUrl/movie/popular?api_key=$apiKey&page=$page&language=ru-RU';
  }

  static String getAllTopRatedMoviesPath(int page) {
    return '$baseUrl/movie/top_rated?api_key=$apiKey&page=$page&language=ru-RU';
  }

  // tv shows paths
  static const String onAirTvShowsPath =
      '$baseUrl/tv/on_the_air?api_key=$apiKey&with_original_language=ru&language=ru-RU';

  static const String popularTvShowsPath =
      '$baseUrl/tv/popular?api_key=$apiKey&with_original_language=ru&language=ru-RU';

  static const String topRatedTvShowsPath =
      '$baseUrl/tv/top_rated?api_key=$apiKey&with_original_language=ru&language=ru-RU';

  static String getTvShowDetailsPath(int tvShowId) {
    return '$baseUrl/tv/$tvShowId?api_key=$apiKey&append_to_response=similar,videos&language=ru-RU';
  }

  static String getSeasonDetailsPath(SeasonDetailsParams params) {
    return '$baseUrl/tv/${params.id}/season/${params.seasonNumber}?api_key=$apiKey&language=ru-RU';
  }

  static String getAllPopularTvShowsPath(int page) {
    return '$baseUrl/tv/popular?api_key=$apiKey&page=$page&with_original_language=ru&language=ru-RU';
  }

  static String getAllTopRatedTvShowsPath(int page) {
    return '$baseUrl/tv/top_rated?api_key=$apiKey&page=$page&with_original_language=ru&language=ru-RU';
  }

  // search paths
  static String getSearchPath(String title) {
    return '$baseUrl/search/multi?api_key=$apiKey&query=$title&language=ru-RU';
  }
}
