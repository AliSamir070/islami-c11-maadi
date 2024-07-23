import 'package:flutter/material.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/selected_item.dart';
import 'package:islamy_c11_maadi/ui/home/tabs/unselected_item.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem("English"),
          SizedBox(height: 20,),
          UnselectedItem("العربية")
        ],
      ),
    );
  }
}
