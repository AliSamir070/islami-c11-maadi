import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String buttonText = "Sobhan Allah";
  double scale = 1.0;

  void _incrementCounter() {
    setState(() {
      counter++;
      if (counter == 30) {
        counter = 0;
        if (buttonText == "Sobhan Allah") {
          buttonText = "Alhamdulillah";
        } else if (buttonText == "Alhamdulillah") {
          buttonText = "Allah Akbar";
        } else {
          buttonText = "Sobhan Allah";
        }
      }
    });
  }

  void _animateImage() {
    setState(() {
      scale = 1.2;
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        scale = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                _animateImage();
                _incrementCounter();
              },
              child: Transform.scale(
                scale: scale,
                child: Stack(
                alignment: Alignment.topCenter,
                  children: [

                        Image.asset('assets/images/head of seb7a.png'),
                      Image.asset('assets/images/body of seb7a.png'),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 20),
            const Text(
              "Number of Tasbeh",
              style: TextStyle(color: Color(0xff242424)),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$counter',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                _incrementCounter();
                _animateImage();
              },
              child: Text(
                buttonText,
                style: const TextStyle(color: Color(0xff242424)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        )]);


  }
}

