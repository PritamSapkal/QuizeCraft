import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultUi extends StatelessWidget{
  ResultUi({super.key, required this.index,required this.Question, required this.CorrectAnswer,required this.UserAnswer});
  int ? index;
  String ? Question ;
  String ? CorrectAnswer;
  String ? UserAnswer;
  bool isCorrect=false;

  Color? iscorrect(String correct, String selected){
    if(correct == selected){
      return Colors.green;
    }
    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white,width: 1),
      ),
 child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [


     Row(
       children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text('  ${index!+1}.  ',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
           ],
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(height: 10,),
             Container(
               width: 300,
                 height: 50,
                  child: Text(Question!,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.left,)),
           ],
         ),
       ],
     ),

     const SizedBox(height: 10,),
     Row(
       children: [
         Padding(
           padding: const EdgeInsets.all(5.0),
           child: Text("Correct Answer :",style: GoogleFonts.poppins(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 15),textAlign:TextAlign.center,),
         ),
         Text(CorrectAnswer!,style: GoogleFonts.poppins(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18),textAlign:TextAlign.center)
       ],
     ),
     //const SizedBox(height: 10,),
     Row(
       children: [

         SizedBox(
             width: 120,
             child: Text("  Your Answer :",style: GoogleFonts.poppins(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 15),textAlign:TextAlign.left,)),
         Text(UserAnswer!,style: GoogleFonts.poppins(color: iscorrect(CorrectAnswer!,UserAnswer!),fontWeight: FontWeight.bold,fontSize: 18),textAlign:TextAlign.left)
       ],
     ),
   ],
 ),
    );
  }
}