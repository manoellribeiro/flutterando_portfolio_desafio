import 'package:flutter/material.dart';
import 'package:flutterando_desafios_portfolio/app/shared/strings.dart';

class ProjectTitleWidget extends StatelessWidget {

  bool _opacityAnimation;

  ProjectTitleWidget(this._opacityAnimation);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: _opacityAnimation ? 1.0 : 0.0,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: Text(
                                Strings.projectsTitle,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700
                                  ),
                                ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: _opacityAnimation ? 1.0 : 0.0,
                            child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: Text(
                                Strings.projectsSubTitle,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 21,
                                  ),
                                ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: _opacityAnimation ? 1.0 : 0.0,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.brightness_3,
                                    color: Colors.pink,
                                    )
                                    ),
                                    title: Text(
                                      Strings.darkModeText,
                                       style: TextStyle(
                                         color: Colors.pink
                                         )
                                         ),
                                    )
                            ),
                          ),
                        ),
      ],);
  }
}
