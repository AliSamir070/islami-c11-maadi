// Todo: create ui design for this tab
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/radio_image.png",
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(fontSize: 25),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous,size: 50,color: Color(0xffB7935F),)),
             IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow,size: 50,color: Color(0xffB7935F),)),
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_next,size: 50,color: Color(0xffB7935F),)),
          
            ],
          ),
        )
      ],
    );
  }
}
