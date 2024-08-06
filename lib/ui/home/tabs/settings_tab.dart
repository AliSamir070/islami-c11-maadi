import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/ui/SettingsProvider.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/language_sheet.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/mode_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14
          ),),
          SizedBox(height: 17,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    width: 4
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.selectedLanguage=="en"?"English":"العربية",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary
                    ),),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                )),
          ),
          SizedBox(height: 19,),
          Text("Mode",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14
          ),),
          SizedBox(height: 17,),
          InkWell(
            onTap: (){
              showModeBottomSheet();
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).colorScheme.onPrimaryContainer
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.themeMode == ThemeMode.light
                        ?"Light"
                        :"Dark",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.primary
                    ),),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

  showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context)=>LanguageSheet());
  }

  showModeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context)=>ModeSheet());
  }
}
