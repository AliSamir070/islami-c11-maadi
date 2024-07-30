import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/style/AppStyle.dart';
import 'package:islamy_c11_maadi/ui/SettingsProvider.dart';
import 'package:islamy_c11_maadi/ui/hadeth_content.dart';
import 'package:islamy_c11_maadi/ui/home/home_screen.dart';
import 'package:islamy_c11_maadi/ui/suracontent/sura_content_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  // new change


  runApp(ChangeNotifierProvider(
      create: (context)=>SettingsProvider(),
      child: const MyApp())  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: AppStyle.darkTheme,
      themeMode: settingsProvider.themeMode,
      theme: AppStyle.lightTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar")
      ],
      locale: Locale(settingsProvider.selectedLanguage),
      routes: {
        HomeScreen.routename:(_)=>HomeScreen(),
        SuraContentScreen.routeName:(_)=>SuraContentScreen(),
        HadethContentScreen.routname:(_)=>HadethContentScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}

