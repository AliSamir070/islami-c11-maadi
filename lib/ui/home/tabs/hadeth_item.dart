import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/model/hadeth_model.dart';
import 'package:islamy_c11_maadi/ui/hadeth_content.dart';

class HadethItem extends StatelessWidget {
  HadethModel hadeth;
  HadethItem({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethContentScreen.routname,arguments: hadeth);
      },
      child: Text(hadeth.title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
