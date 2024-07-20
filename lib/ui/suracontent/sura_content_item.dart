import 'package:flutter/material.dart';

class SuraContentItem extends StatelessWidget {
  String verse;
  int index;
  SuraContentItem(this.verse,this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$verse (${index+1})",
      style: TextStyle(
        fontSize: 20,
        fontFamily: "DecoType Thuluth"
      ),

      textAlign: TextAlign.center,textDirection: TextDirection.rtl,);
  }
}
