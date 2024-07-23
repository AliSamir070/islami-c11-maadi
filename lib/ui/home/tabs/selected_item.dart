import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  String value;
  SelectedItem(this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(value,style: Theme.of(context).textTheme.bodyLarge,),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          size: 25,
        )
      ],
    );
  }
}
