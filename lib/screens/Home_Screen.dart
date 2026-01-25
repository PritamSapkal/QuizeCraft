import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizecraft/Buttons/Option_Button.dart';
import 'package:quizecraft/Data/Data.dart';
import 'package:quizecraft/data_model/CompleteData_model.dart';
import 'package:quizecraft/Data/QuestionAnsData.dart';

import 'Question_Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

   void gotoQuestionScreen(int index){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuestionScreen(index: index,)));
   }

  @override
  Widget build(BuildContext context) {
    final List<CompleteDataModel> languages = List.of(Data().CData);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),

              Text(
                "Choose Your Language",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),

              // choose yopur app text
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: SizedBox(
                    width: 350,
                    height: 600,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return OptionButton(
                          option: languages[index].LName,
                          image: languages[index].imagepath,
                          textsize: 20,
                          bheight: 80,
                          bwidth: 300,
                          onTap: () => gotoQuestionScreen(index) ,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 20),
                      itemCount: languages.length,
                    ),
                  ),
                ),
              ),
              // select language for the quize option

              //NavigationButtons(Bwidth: 200, Bheight: 50, text: "Next", textsize: 30, onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
