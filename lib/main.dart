import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/routes/app_routes.dart';
import 'package:movie_app/screens/home_movies.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color darkTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie App',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          elevation: 3.0,
          centerTitle: true,
          backgroundColor: Colors.black45,
          iconTheme: IconThemeData(color: Colors.yellow),
        ),
        textTheme: GoogleFonts.montserratTextTheme(textTheme).copyWith(
          bodyText1: GoogleFonts.montserrat(
              textStyle: textTheme.bodyText1!.copyWith(color: darkTextColor)),
          bodyText2: GoogleFonts.montserrat(
              textStyle: textTheme.bodyText2!.copyWith(color: darkTextColor)),
          headline1: GoogleFonts.montserrat(
              textStyle: textTheme.headline1!.copyWith(color: darkTextColor)),
          headline2: GoogleFonts.montserrat(
              textStyle: textTheme.headline2!.copyWith(color: darkTextColor)),
          headline3: GoogleFonts.montserrat(
            textStyle: textTheme.headline3!.copyWith(color: darkTextColor),
          ),
          headline4: GoogleFonts.montserrat(
            textStyle: textTheme.headline4!.copyWith(color: darkTextColor),
          ),
          headline5: GoogleFonts.montserrat(
            textStyle: textTheme.headline5!.copyWith(color: darkTextColor),
          ),
          headline6: GoogleFonts.montserrat(
            textStyle: textTheme.headline6!.copyWith(color: darkTextColor),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.yellow,
            primary: Colors.black,
            brightness: Brightness.dark),
      ),
      initialRoute: HomeMovies.homeRoutes,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
