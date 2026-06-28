import 'package:flutter/material.dart';
import 'package:quizecraft/screens/welcome_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OptionButton  extends StatelessWidget{

  OptionButton({super.key,required this.option,required this.textsize,required this.bwidth, required this.bheight,required this.image, required this.onTap});
  String ? option;
  final double ? bwidth;
  final double ? bheight;
  final double ? textsize;
  String ? image;
  void Function ()?  onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black38,
      color:  const Color(0x33FFFFFF),
     elevation: 0,
      child: InkWell(
          onTap: onTap,
          child:  Container(
        width: bwidth,
        height: bheight,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(20.5),
          border: Border.all(color:Colors.white70,width: 1),
        ),
            child: Row(

              children: [
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: SvgPicture.asset(image!,width:50,height:40,)),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textline(text: option, color: Colors.white, weight: FontWeight.bold, size: 30),
                  ],
                )
                ],
            ),
      )),
    );
  }
}