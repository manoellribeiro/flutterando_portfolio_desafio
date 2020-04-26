import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_desafios_portfolio/app/app_controller.dart';
import 'package:flutterando_desafios_portfolio/app/shared/strings.dart';

class ProjectTitleWidget extends StatelessWidget {

  bool _opacityAnimation;

  ProjectTitleWidget(this._opacityAnimation);

  AppController controller = Modular.get<AppController>();

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
                                style: Theme.of(context).textTheme.display1
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
                                style: Theme.of(context).textTheme.display2
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
                                leading: GestureDetector(
                                  onTap: controller.changeDarkModeState,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Theme.of(context).iconTheme.color,
                                    child: Icon(
                                      controller.isDarkModeEnabled ? Icons.wb_sunny : Icons.brightness_3,
                                      color: Colors.pink,
                                      )
                                      ),
                                ),
                                    title: Text(
                                      controller.isDarkModeEnabled ? Strings.lightModeText : Strings.darkModeText,
                                       style: Theme.of(context).textTheme.display3
                                         ),
                                    )
                            ),
                          ),
                        ),
      ],);
  }
}
