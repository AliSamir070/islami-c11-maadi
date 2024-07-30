import 'package:flutter/material.dart';

class AppStyle{
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color darkSecondaryColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        bodySmall: TextStyle(
            fontSize: 20,
            fontFamily: "DecoType Thuluth"
        ),
        displayMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: lightPrimaryColor
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
      )

    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: lightPrimaryColor,
    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    dividerTheme: DividerThemeData(
        thickness: 3,
        color:lightPrimaryColor
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
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)
        )
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor,
      primary: lightPrimaryColor,
      onPrimary: Colors.white,
      secondary: lightPrimaryColor.withOpacity(0.57),
      onSecondary: Colors.black,
      onPrimaryContainer: lightPrimaryColor,
      onSecondaryContainer: Colors.white
    ),
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    cardTheme: CardTheme(
      color: darkPrimaryColor,
      surfaceTintColor: darkPrimaryColor,
    ),
    textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: darkSecondaryColor
        ),
        titleSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 20,
            fontFamily: "DecoType Thuluth",
            color: darkSecondaryColor
        ),
        displayMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white
        )

    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerTheme: DividerThemeData(
        thickness: 3,
        color:darkSecondaryColor
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkSecondaryColor,
        unselectedItemColor:Colors.white,
        selectedIconTheme: IconThemeData(
            size: 40
        ),
        unselectedIconTheme: IconThemeData(
            size: 40
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimaryColor,
        primary: darkPrimaryColor,
        secondary: darkSecondaryColor,
        onPrimaryContainer: darkSecondaryColor,
        onSecondaryContainer: darkPrimaryColor
    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),

        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )
    ),
  );
}