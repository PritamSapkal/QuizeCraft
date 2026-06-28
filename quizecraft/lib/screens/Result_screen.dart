import 'package:flutter/material.dart';
import 'package:quizecraft/Buttons/Result_UI.dart';
import 'package:quizecraft/Buttons/navigation_Buttons.dart';
import 'package:quizecraft/screens/Question_Screen.dart';
import 'package:quizecraft/screens/welcome_screen.dart';

import '../Data/Data.dart';
import 'Home_Screen.dart';

class ResultScreen extends StatelessWidget{
  ResultScreen({super.key,required this.UserAnswer ,required this.index,required this.mklistempty});
  List<String> ? UserAnswer;
  int ? index;
  int correctAnswerCount = 0;
  void Function() ? mklistempty;

  late final selectedLanguage = Data().CData[index!];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < selectedLanguage.QuestionAnswer!.length; i++) {
      if (UserAnswer![i] ==
          selectedLanguage.QuestionAnswer![i].answerlist![0]) {
        correctAnswerCount++;
      }
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textline(text: 'You scored $correctAnswerCount out of 10!', color: Colors.white, weight: FontWeight.bold, size:30),
              ),// score text

              SizedBox(
                width: 380,
                height: 580,
                child:

                ListView.separated(
                  itemBuilder: (context, index) {
                    return ResultUi(
                      index: index,
                      Question: selectedLanguage.QuestionAnswer![index].Question,
                      CorrectAnswer: selectedLanguage
                          .QuestionAnswer![index]
                          .answerlist![0],
                      UserAnswer: UserAnswer![index],
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                  itemCount: selectedLanguage.QuestionAnswer!.length,
                ),

              ),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavigationButtons(Bwidth: 150, Bheight: 50, text: 'Home', textsize: 20, onTap: (){

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }),
                 const SizedBox(width: 30),
                  NavigationButtons(Bwidth: 150, Bheight: 50, text: 'Restart', textsize: 20, onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuestionScreen(index: index!)));
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}