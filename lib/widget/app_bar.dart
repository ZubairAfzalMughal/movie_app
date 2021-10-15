import 'package:flutter/material.dart';

AppBar appBar(context, {required String title, required String subtitle}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const WidgetSpan(
            child: SizedBox(
              width: 5.0,
            ),
          ),
          TextSpan(
            text: subtitle,
            style: TextStyle(
                fontSize: 18.0,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    ),
  );
}
