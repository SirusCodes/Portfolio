import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Projects",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}