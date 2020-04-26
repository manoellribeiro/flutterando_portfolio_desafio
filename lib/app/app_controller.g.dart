// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$darkModeButtonTextAtom =
      Atom(name: '_AppControllerBase.darkModeButtonText');

  @override
  String get darkModeButtonText {
    _$darkModeButtonTextAtom.context
        .enforceReadPolicy(_$darkModeButtonTextAtom);
    _$darkModeButtonTextAtom.reportObserved();
    return super.darkModeButtonText;
  }

  @override
  set darkModeButtonText(String value) {
    _$darkModeButtonTextAtom.context.conditionallyRunInAction(() {
      super.darkModeButtonText = value;
      _$darkModeButtonTextAtom.reportChanged();
    }, _$darkModeButtonTextAtom, name: '${_$darkModeButtonTextAtom.name}_set');
  }

  final _$darkModeIconAtom = Atom(name: '_AppControllerBase.darkModeIcon');

  @override
  IconData get darkModeIcon {
    _$darkModeIconAtom.context.enforceReadPolicy(_$darkModeIconAtom);
    _$darkModeIconAtom.reportObserved();
    return super.darkModeIcon;
  }

  @override
  set darkModeIcon(IconData value) {
    _$darkModeIconAtom.context.conditionallyRunInAction(() {
      super.darkModeIcon = value;
      _$darkModeIconAtom.reportChanged();
    }, _$darkModeIconAtom, name: '${_$darkModeIconAtom.name}_set');
  }

  final _$isDarkModeEnabledAtom =
      Atom(name: '_AppControllerBase.isDarkModeEnabled');

  @override
  bool get isDarkModeEnabled {
    _$isDarkModeEnabledAtom.context.enforceReadPolicy(_$isDarkModeEnabledAtom);
    _$isDarkModeEnabledAtom.reportObserved();
    return super.isDarkModeEnabled;
  }

  @override
  set isDarkModeEnabled(bool value) {
    _$isDarkModeEnabledAtom.context.conditionallyRunInAction(() {
      super.isDarkModeEnabled = value;
      _$isDarkModeEnabledAtom.reportChanged();
    }, _$isDarkModeEnabledAtom, name: '${_$isDarkModeEnabledAtom.name}_set');
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  void changeDarkModeState() {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction();
    try {
      return super.changeDarkModeState();
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'darkModeButtonText: ${darkModeButtonText.toString()},darkModeIcon: ${darkModeIcon.toString()},isDarkModeEnabled: ${isDarkModeEnabled.toString()}';
    return '{$string}';
  }
}
