import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/model/hadeth_model.dart';

class HadethContentScreen extends StatelessWidget {
  static const String routname = "HadethContentScreen";
  const HadethContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
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
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "DecoType Thuluth"
                        ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
