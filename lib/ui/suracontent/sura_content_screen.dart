import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_c11_maadi/ui/suracontent/sura_content_item.dart';

class SuraContentScreen extends StatefulWidget {
  static const String routeName = "SuraContentScreen";
  SuraContentScreen({super.key});

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  @override
  Widget build(BuildContext context) {
    SuraContentArgs args = ModalRoute.of(context)?.settings.arguments as SuraContentArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.suraName),
          ),
          body: Card(
            elevation: 30,
            margin: EdgeInsets.all(16),
            child: verses.isEmpty
                ?Center(child: CircularProgressIndicator(),)
                :Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                  itemBuilder: (context , index)=>SuraContentItem(verses[index],index),
                  separatorBuilder: (context,index)=>Divider(),
                  itemCount: verses.length),
                ),
          ),
        ));
  }

  int add(int n1 , int n2){
    return n1+n2;
  }

  List<String> verses = [];

  loadFile(int index) async {
    String suraContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    print(suraContent);
    setState(() {
      verses = suraContent.split("\n");
    });
  }
}


class SuraContentArgs{
  String suraName;
  int index;
  SuraContentArgs({required this.suraName , required this.index});
}