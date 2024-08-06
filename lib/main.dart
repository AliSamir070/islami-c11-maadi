import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/style/AppStyle.dart';
import 'package:islamy_c11_maadi/style/configuration.dart';
import 'package:islamy_c11_maadi/ui/SettingsProvider.dart';
import 'package:islamy_c11_maadi/ui/hadeth_content.dart';
import 'package:islamy_c11_maadi/ui/home/home_screen.dart';
import 'package:islamy_c11_maadi/ui/suracontent/sura_content_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // new change
  await SavedPreferences.init();
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider()..getProviderMode()..getProviderLanguage(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  SavedPreferences savedPreferences = SavedPreferences();
  ThemeMode appMode = ThemeMode.light;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savedPreferences.getLanguage();
  }

  getMode() async {
    String mode = await savedPreferences.getModeString();
    appMode = savedPreferences.getThemeMode(mode);
  }

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: AppStyle.darkTheme,
      themeMode: appMode,
      theme: AppStyle.lightTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("en"), Locale("ar")],
      locale: Locale(settingsProvider.selectedLanguage),
      routes: {
        HomeScreen.routename: (_) =>  HomeScreen(),
        SuraContentScreen.routeName: (_) => SuraContentScreen(),
        HadethContentScreen.routname: (_) => const HadethContentScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}
