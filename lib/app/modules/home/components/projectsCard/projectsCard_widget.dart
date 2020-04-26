import 'package:flutter/material.dart';

class ProjectsCardWidget extends StatelessWidget {

  final String imageLocation;
  final int duration;
  bool showProjects = false;
  double padding;

  ProjectsCardWidget({Key key, this.imageLocation, this.duration, this.showProjects, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      curve: Curves.decelerate,
      padding: EdgeInsets.only(top: showProjects ? 0 : padding),
      duration: Duration(milliseconds: duration),
            child: Container(
            height: 420,
            width: 315,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageLocation))),
      ),
    );
  }
}
