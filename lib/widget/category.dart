
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.size,
    required this.category,
    required this.bgColor,
    required this.textColor,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String category;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.082,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Text(
            category,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
