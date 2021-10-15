class Movie {
  final String name;
  final double rating;
  final String poster;
  final String genre;

  Movie(
      {required this.name,
      required this.genre,
      required this.poster,
      required this.rating});
}

var movies = [
  Movie(
      name: 'Avengers',
      genre: 'Action',
      poster:
          'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_FMjpg_UX1000_.jpg',
      rating: 4.5),
  Movie(
      name: 'Squid Game',
      genre: 'Action',
      poster:
          'https://www.pinkvilla.com/imageresize/squid_game_poster_main.jpg?width=752&format=webp&t=pvorg',
      rating: 4.0),
  Movie(
      name: 'Hating House',
      genre: 'Horror',
      poster:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXXzc_2e0lyrYrY3syawomsnt_5Zq2w1BJPA&usqp=CAU',
      rating: 2.5),
  Movie(
      name: 'Kingdom',
      genre: 'Horror',
      poster: 'https://photos.hancinema.net/photos/photo1156841.jpg',
      rating: 2.5),
  Movie(
      name: 'Gun Ackimbo',
      genre: 'Comedy',
      poster:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOwgsVw-aZINRyBddzji8l78XFNv4a7qa9Sg&usqp=CAU',
      rating: 3.5),
  Movie(
      name: 'Welcome to NewYork',
      genre: 'Comedy',
      poster:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfxKS5FvqRj_XlQAas6O9mJ8fFjlzFbmbYtQ&usqp=CAU',
      rating: 4.0),
];
