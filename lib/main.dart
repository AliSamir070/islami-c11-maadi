import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/style/AppStyle.dart';
import 'package:islamy_c11_maadi/ui/hadeth_content.dart';
import 'package:islamy_c11_maadi/ui/home/home_screen.dart';
import 'package:islamy_c11_maadi/ui/suracontent/sura_content_screen.dart';

void main() {
  // new change


  runApp(const MyApp()  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: AppStyle.darkTheme,
      themeMode: AppStyle.isDark? ThemeMode.dark: ThemeMode.light,
      theme: AppStyle.lightTheme,
      routes: {
        HomeScreen.routename:(_)=>HomeScreen(),
        SuraContentScreen.routeName:(_)=>SuraContentScreen(),
        HadethContentScreen.routname:(_)=>HadethContentScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}

