import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_c11_maadi/model/hadeth_model.dart';

import 'hadeth_item.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){
      loadFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/ahadeth_image.png")),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                width: 2
              ),
              bottom: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2
              )
            )
          ),
          child: Text(
            "Ahadeth",
            style: TextStyle(
              fontSize: 25
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty
              ?Center(child: CircularProgressIndicator(),)
              :ListView.separated(
              itemBuilder: (context, index) => HadethItem(hadeth: ahadethList[index],),
              separatorBuilder:(context,index)=>Divider() ,
              itemCount: ahadethList.length
          ),
        )
      ],
    );
  }

  List<HadethModel> ahadethList = [];

  loadFile()async{
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = content.split("#");
    for(int i=0;i<ahadeth.length;i++){
      List<String> oneHadethContent = ahadeth[i].trim().split("\n");
      String hadethTitle = oneHadethContent[0];
      print(oneHadethContent);
      oneHadethContent.removeAt(0);
      String hadethContent = oneHadethContent.join("\n");
      ahadethList.add(HadethModel(title: hadethTitle, content: hadethContent));
    }
    setState(() {

    });

  }
}
