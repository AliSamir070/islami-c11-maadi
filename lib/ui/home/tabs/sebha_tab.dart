import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return  Sebha_rotation();
  }
}

class Sebha_rotation extends StatefulWidget {
   Sebha_rotation({super.key});
  double angle = 0;

  @override
  _Sebha_rotationState createState() => _Sebha_rotationState();
}

class _Sebha_rotationState extends State<Sebha_rotation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  String counter = "0";
  List<String> sebhaText = ["سبحان الله", "الحمدلله", "لا اله الا الله"];
  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onClick() {
      controller.animateTo(widget.angle + 0.2);
      int score = int.parse(counter);
      score++;
      counter = score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 30),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 120,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    "assets/images/head of seb7a.png",
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onClick();
                      checkIndex(int.parse(counter));
                    });
                  },
                  child: RotationTransition(
                    turns: controller,
                    child: SizedBox(
                      height: 580,
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/body of seb7a.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "Count",
            style: TextStyle(fontSize: 50),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xffC7B295),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                counter,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
                color: const Color(0xffB6925E),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                sebhaText[index],
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  int checkIndex(int count) {
    if (count == 30) {
      counter = "0";
      if (index < 3) {
        index++;
      } else {
        index = 0;
      }
    }
    return index;
  }
}
