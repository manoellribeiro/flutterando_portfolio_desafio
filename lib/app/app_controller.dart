import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  
  @observable
  String darkModeButtonText = "Enable dark mode";

  @observable
  IconData darkModeIcon = Icons.brightness_3;

  @observable
  bool isDarkModeEnabled = false;

  @action
  void changeDarkModeState() {
    isDarkModeEnabled = !isDarkModeEnabled;
    darkModeButtonText = "Enable light mode";
    darkModeIcon = Icons.wb_sunny;
  }
}
