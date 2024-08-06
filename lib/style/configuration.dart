import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedPreferences{
  static  String mode="mode";
  static  String language="language";
  static late SharedPreferences preferences;
  static init()async{
    preferences =await SharedPreferences.getInstance();
  }
  void SaveMode(ThemeMode themeMode)async{
    await preferences.setString(mode,themeMode.toString());
  }
  SaveLanguage(String myLanguage)async{
    await preferences.setString(language, myLanguage);
  }
  getModeString(){
    return preferences.getString(mode);
  }
   getLanguage(){
    return preferences.getString(language);
  }
  ThemeMode getThemeMode(String mode){
    if(mode=="light"){
      return ThemeMode.light;
    }else{
      return ThemeMode.dark;
    }
  }
}