import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_desafios_portfolio/app/app_controller.dart';
import 'package:flutterando_desafios_portfolio/app/shared/size_config.dart';
import 'package:flutterando_desafios_portfolio/app/shared/styles.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Observer(builder: (_) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                navigatorKey: Modular.navigatorKey,
                title: 'Flutter Slidy',
                theme: controller.isDarkModeEnabled ? AppTheme.darkThemeHome : AppTheme.lightThemeHome,
                initialRoute: '/',
                onGenerateRoute: Modular.generateRoute,
              );
            });
          },
        );
      },
    );
  }
}
