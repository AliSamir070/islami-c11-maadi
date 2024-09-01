import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
double rotationAngel =0;
  String tasbe7 ="سبحان الله";

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height; 
    double width = MediaQuery.of(context).size.width; 
    return SizedBox(width: double.infinity,
      child: Column(
         children: [
          SizedBox(height: hight*0.5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(child: Image.asset("assets/images/sebha_head.png"),top: hight*0.02,),
                      GestureDetector( onTap: onTap,child: Transform.rotate(angle: rotationAngel,child: Image.asset("assets/images/sebha_body.png"))),
              ],
            ),
          ),
            Text("عدد التسبيحات",
                style: TextStyle(fontSize: 25,   fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
                SizedBox(height: 8,),
                Container(alignment: Alignment.center,
              decoration: const BoxDecoration(color: Color(0xffB7935F),borderRadius: BorderRadius.all(Radius.circular(25))),
              width: width*0.167,
              height: hight*0.0927,
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                )),
                SizedBox(height: 8,),
                  Container(
              decoration: const BoxDecoration(color: Color(0xffB7935F),borderRadius: BorderRadius.all(Radius.circular(25))),
              width: width*0.332,
              height: hight*0.05,
                child: Text(
                  "$tasbe7",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )),
        ],
      ),
    ) ;
  }

  onTap(){
    counter++;
    if(counter ==33){
tasbe7 ="الحمد لله";
    }
    else if(counter ==66){
tasbe7 ="الله أكبر";
    }
    else if(counter ==99){
      tasbe7 ="سبحان الله";
      counter=0;
    }
    setState(() {rotationAngel+=11;});
  }
}
// Container(
//       child: Column(
//         children: [
//           Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               Image.asset("assets/images/sebha_head.png"),
//               Image.asset("assets/images/sebha_body.png"),
//             ],
//           ),
//         
//               
//           
//               SizedBox(height: 4,),
//             
          
//         ],
//       ),
//     );