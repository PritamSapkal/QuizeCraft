import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizecraft/Buttons/navigation_Buttons.dart';
import 'package:quizecraft/screens/Home_Screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF4A90E2),
                  Color(0xFF9013FE),
                ])),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Opacity(
                opacity: 0.7
                ,child: Image.asset("assets/images/logo.png",color: Colors.white,),

                ),

                SizedBox(height: 10,),
                
                Opacity(
                  opacity: 0.8,
                  child: Text("Learn. Practice. Succeed.",style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 300,),

                NavigationButtons(text:"Get Started" ,onTap:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
                } ,Bheight:60 ,Bwidth:300 ,textsize: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class textline extends StatelessWidget{
  textline({super.key,required this.text, required this.color, required this.weight, required this.size});
  Color ? color;
  double ? size;
  FontWeight ? weight;
  String ? text;
  @override
  Widget build(BuildContext context) {
    return Text(text!,style: GoogleFonts.poppins(
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
    textAlign:TextAlign.center,);
  }
}
