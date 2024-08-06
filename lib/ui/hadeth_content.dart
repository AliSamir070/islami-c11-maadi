import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/model/hadeth_model.dart';
import 'package:islamy_c11_maadi/ui/SettingsProvider.dart';
import 'package:provider/provider.dart';

import '../style/AppStyle.dart';

class HadethContentScreen extends StatelessWidget {
  static const String routname = "HadethContentScreen";
  const HadethContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.ChooseBackground()),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 30,
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(child: Text(
                        args.content,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.bodySmall,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
