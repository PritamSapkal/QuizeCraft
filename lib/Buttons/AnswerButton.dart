import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answerbutton extends StatelessWidget{
  Answerbutton({super.key,required this.option,required this.onTap});
  String ? option;
  void Function ()?  onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed:onTap ,
        style: ElevatedButton.styleFrom(
          backgroundColor:  const Color(0x33FFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          elevation:0,
          padding: EdgeInsets.all(10),
        ),
        child: Container(
          width: 300 ,
          child: Center(
            child: Text(option!,style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    );
  }
}