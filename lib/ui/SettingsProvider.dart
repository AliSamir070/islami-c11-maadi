// observable
// publisher

import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;

  ChangeThemeMode(ThemeMode newTheme){
    if(newTheme == themeMode) return;
    themeMode = newTheme;
    notifyListeners();
  }

  String ChooseBackground(){
    if(themeMode == ThemeMode.dark){
      return "assets/images/dark_background.png";
    }else{
      return "assets/images/background.png";
    }
  }

  String selectedLanguage = "en";

  ChangeSelectedLanguage(String newLanguage){
    if(selectedLanguage == newLanguage) return;
    selectedLanguage = newLanguage;
    notifyListeners();
  }
}