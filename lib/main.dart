import 'package:flutter/material.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        dividerColor: Color(0xffB7935F),
        cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        dividerTheme: DividerThemeData(
          thickness: 3,
          color:Color(0xffB7935F)
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor:Colors.white,
          selectedIconTheme: IconThemeData(
            size: 40
          ),
          unselectedIconTheme: IconThemeData(
            size: 40
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff242424)
          )
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffB7935F),
            primary: Color(0xffB7935F),
            onPrimary: Colors.white,
            secondary: Color(0xffB7935F).withOpacity(0.57),
            onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routename:(_)=>HomeScreen(),
        SuraContentScreen.routeName:(_)=>SuraContentScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}

