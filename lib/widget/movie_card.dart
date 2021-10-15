import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'loading_indicator.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(
      {Key? key,
      required this.movieUrl,
      required this.name,
      required this.rating})
      : super(key: key);
  final String movieUrl;
  final String name;
  final double rating;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: CachedNetworkImage(
              imageUrl: movieUrl,
              errorWidget: (context, builder, error) => Icon(Icons.error),
              placeholder: (context, builder) =>
                  customLoadingIndicator(context),
              fit: BoxFit.cover,
              height: size.height * 0.35,
              width: size.height * 0.35,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 5.0,
          ),
          SmoothStarRating(
            allowHalfRating: true,
            onRated: (v) {
              print(v);
            },
            starCount: 5,
            rating: rating,
            size: 30.0,
            isReadOnly: true,
            filledIconData: Icons.star,
            halfFilledIconData: Icons.star_half,
            color: Theme.of(context).colorScheme.secondary,
            borderColor: Theme.of(context).colorScheme.secondary,
            spacing: 0.0,
          ),
        ],
      ),
    );
  }
}
