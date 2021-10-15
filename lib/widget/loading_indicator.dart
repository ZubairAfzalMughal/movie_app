import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

SizedBox customLoadingIndicator(context){
  return SizedBox(
    height: 50,
    child: LoadingIndicator(
      indicatorType: Indicator.ballBeat,
      colors: [
        Theme.of(context).colorScheme.secondary,
      ],
      strokeWidth: 1.0,
    ),
  );
}