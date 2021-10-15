import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  static const String trendingRoutes= '/trending';

  const TrendingMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Movies'),
      ),
      body: const Center(
        child: Text('Trending Movies'),
      ),
    );
  }
}
