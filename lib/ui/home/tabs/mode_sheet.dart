import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/ui/SettingsProvider.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/selected_item.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/unselected_item.dart';
import 'package:provider/provider.dart';

class ModeSheet extends StatelessWidget {
  const ModeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(provider.themeMode == ThemeMode.light
              ?"Light":"Dark"),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                provider.ChangeThemeMode(provider.themeMode == ThemeMode.light
                    ?ThemeMode.dark
                    :ThemeMode.light);
              },
              child: UnselectedItem(provider.themeMode == ThemeMode.light
                  ?"Dark":"Light"))
        ],
      ),
    );
  }
}
