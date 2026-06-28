import "package:flutter/material.dart";
import "package:quizecraft/screens/welcome_screen.dart";

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );

  }
}