import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_movies.dart';
import 'package:movie_app/screens/today_popular_movies.dart';
import 'package:movie_app/screens/trending_movies.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeMovies(),
          settings: const RouteSettings(name: HomeMovies.homeRoutes),
        );
      case '/trending':
        return MaterialPageRoute(
          builder: (BuildContext context) => const TrendingMovies(),
          settings: const RouteSettings(name: TrendingMovies.trendingRoutes),
        );
      case '/popular':
        return MaterialPageRoute(
          builder: (BuildContext context) => const TodayPopularMovies(),
          settings: const RouteSettings(name: TodayPopularMovies.popularMovies),
        );
      default:
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/error'),
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(
              title: const Text('Error'),
            ),
            body: const Center(
              child: Text("Some things went wrong"),
            ),
          ),
        );
    }
  }
}
