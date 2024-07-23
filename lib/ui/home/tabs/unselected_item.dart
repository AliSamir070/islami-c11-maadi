import 'package:flutter/material.dart';

class UnselectedItem extends StatelessWidget {
  String value;
  UnselectedItem(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(value,style: Theme.of(context).textTheme.titleSmall
    );
  }
}
