import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(25.0)),
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyText2,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: 'Search..',
            hintStyle: Theme.of(context).textTheme.bodyText2,
            prefixIcon: Icon(Icons.search,color: Colors.white,),
            contentPadding: EdgeInsets.only(left: size.height * 0.05,top:size.height * 0.025),
            border: InputBorder.none),
      ),
    );
  }
}
