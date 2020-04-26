import 'package:flutter/material.dart';

class ProjectsCardWidget extends StatelessWidget {

  final String imageLocation;

  const ProjectsCardWidget({Key key, this.imageLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: 315,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imageLocation))),
    );
  }
}
