import 'package:flutter/material.dart';

class TodayPopularMovies extends StatelessWidget {
  static const String popularMovies= '/popular';

  const TodayPopularMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
      ),
      body: const Center(
        child: Text('Popular Movies'),
      ),
    );
  }
}
