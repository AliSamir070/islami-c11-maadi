import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_c11_maadi/ui/suracontent/sura_content_screen.dart';

class QuranSuraWidget extends StatelessWidget {
  String suraName;
  int verseNumber;
  int index;
  QuranSuraWidget({required this.suraName,required this.verseNumber,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraContentScreen.routeName,arguments: SuraContentArgs(suraName: suraName, index: index));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(child: Text(suraName,textAlign: TextAlign.center,style: Theme.of(context).textTheme.displayMedium,),),
            Container(
              width: 5,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            Expanded(child: Text(verseNumber.toString(),textAlign: TextAlign.center,style: Theme.of(context).textTheme.displayMedium))
          ],
        ),
      ),
    );
  }
}
