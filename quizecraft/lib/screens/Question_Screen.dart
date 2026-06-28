import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizecraft/Buttons/AnswerButton.dart';
import 'package:quizecraft/Data/Data.dart';
import 'package:quizecraft/screens/Home_Screen.dart';
import 'package:quizecraft/screens/Result_screen.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.index});

  final int index;
  List<String> SelectedAnswer = [];

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var i = 0;
  late final selectedLanguage = Data().CData[widget.index];

  void makeListempty(){
    setState(() {
      widget.SelectedAnswer.clear();
    });
  }
  void changeQuestion(String answer) {
    widget.SelectedAnswer.add(answer);
    if (i == selectedLanguage.QuestionAnswer!.length - 1 ) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            UserAnswer: widget.SelectedAnswer,
            index: widget.index,
            mklistempty: makeListempty,
          ),
        ),
      );
    } else {
      setState(() {
        i = i + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final languageName = selectedLanguage.LName!;
    final question = selectedLanguage.QuestionAnswer![i].Question;

    return Scaffold(
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
          children: [
            const SizedBox(height: 100),

            Text(
              '$languageName Quiz',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),

            const SizedBox(height: 80),

            Container(
              width: 350,
              height: 120,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0x33FFFFFF),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Colors.white70),
              ),
              child: Center(
                child: Text(
                  '${i + 1}.  ' + question!,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: 50),

            Column(
              children: selectedLanguage.QuestionAnswer![i].getshuffeledanswers()
                  .map(
                    (data) => Answerbutton(
                      option: data,
                      onTap: () {
                        changeQuestion(data);
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
