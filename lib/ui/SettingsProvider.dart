// observable
// publisher

import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/style/configuration.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  SavedPreferences savedPreferences=SavedPreferences();

  getProviderMode(){
    String theme=savedPreferences.getModeString();
    themeMode=savedPreferences.getThemeMode(theme);
    notifyListeners();
  }

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
  getProviderLanguage(){
    selectedLanguage=savedPreferences.getLanguage();
    notifyListeners();
  }

  String selectedLanguage = "en";

  ChangeSelectedLanguage(String newLanguage){
    if(selectedLanguage == newLanguage) return;
    selectedLanguage = newLanguage;
    notifyListeners();
  }
}