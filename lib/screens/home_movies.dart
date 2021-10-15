import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/widget/app_bar.dart';
import 'package:movie_app/widget/category.dart';
import 'package:movie_app/widget/custom_search.dart';
import 'package:movie_app/widget/loading_indicator.dart';
import 'package:movie_app/widget/movie_card.dart';

enum Genre { all, action, horror, comedy }

class HomeMovies extends StatefulWidget {
  static const String homeRoutes = '/home';

  @override
  State<HomeMovies> createState() => _HomeMoviesState();
}

class _HomeMoviesState extends State<HomeMovies> {
  Genre genre = Genre.all;
  List<Movie> _movies = [];
  bool isLoading = false;

  @override
  void initState() {
    setState(() {
      movies.forEach((movie) {
        _movies.add(movie);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar(context, title: 'Movie', subtitle: 'Hub'),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Search Bar
                      CustomSearch(size: size),
                      Text(
                        'Categories',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Category(
                            size: size,
                            category: 'All',
                            bgColor: genre == Genre.all
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            textColor: genre == Genre.all
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                            onTap: () {
                              setState(() {
                                genre = Genre.all;
                                List<Movie> temp_movie = [];
                                isLoading = true;
                                Future.delayed(Duration(seconds: 2)).then((_) {
                                  for (int i = 0; i < movies.length; i++) {
                                    temp_movie.add(movies[i]);
                                  }
                                  setState(() {
                                    _movies = temp_movie;
                                    isLoading = false;
                                  });
                                });
                              });
                            },
                          ),
                          Category(
                            size: size,
                            category: 'Action',
                            bgColor: genre == Genre.action
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            textColor: genre == Genre.action
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                            onTap: () {
                              setState(() {
                                genre = Genre.action;
                                isLoading = true;
                                Future.delayed(Duration(seconds: 2)).then((_) {
                                  setState(() {
                                    _movies = movies
                                        .where((movie) =>
                                            movie.genre.toLowerCase() ==
                                            'action')
                                        .toList();
                                    isLoading = false;
                                  });
                                });
                              });
                            },
                          ),
                          Category(
                            size: size,
                            category: 'Horror',
                            bgColor: genre == Genre.horror
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            textColor: genre == Genre.horror
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                            onTap: () {
                              setState(() {
                                genre = Genre.horror;
                                isLoading = true;
                                Future.delayed(Duration(seconds: 2)).then((_) {
                                  setState(() {
                                    _movies = movies
                                        .where((movie) =>
                                            movie.genre.toLowerCase() ==
                                            'horror')
                                        .toList();
                                    isLoading = false;
                                  });
                                });
                              });
                            },
                          ),
                          Category(
                            size: size,
                            category: 'Comedy',
                            bgColor: genre == Genre.comedy
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            textColor: genre == Genre.comedy
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                            onTap: () {
                              setState(() {
                                genre = Genre.comedy;
                                isLoading = true;
                                Future.delayed(Duration(seconds: 2)).then((_) {
                                  setState(() {
                                    _movies = movies
                                        .where((movie) =>
                                            movie.genre.toLowerCase() ==
                                            'comedy')
                                        .toList();
                                    isLoading = false;
                                  });
                                });
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Popular Today',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      isLoading
                          ? Center(child: customLoadingIndicator(context))
                          : Container(
                              height: size.height * 0.5,
                              child: ListView.builder(
                                  itemCount: _movies.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return MovieCard(
                                      movieUrl: _movies[index].poster,
                                      name: _movies[index].name,
                                      rating: _movies[index].rating,
                                    );
                                  }),
                            ),
                      Text(
                        'Trending Today',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      isLoading
                          ? Center(child: customLoadingIndicator(context))
                          : Container(
                              height: size.height * 0.5,
                              child: ListView.builder(
                                  itemCount: _movies.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return MovieCard(
                                      movieUrl: _movies[index].poster,
                                      name: _movies[index].name,
                                      rating: _movies[index].rating,
                                    );
                                  }),
                            ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
