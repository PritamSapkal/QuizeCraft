import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quizecraft/data_model/CompleteData_model.dart';
import 'package:quizecraft/Data/QuestionAnsData.dart';
class Data {
  var CData =[
    CompleteDataModel(imagepath :'assets/icons/java.svg' ,LName:'Java',QuestionAnswer: Questionansdata().QA_Java),
    CompleteDataModel(imagepath :'assets/icons/cplusplus.svg' ,LName:'C++',QuestionAnswer: Questionansdata().QA_Cpp),
    CompleteDataModel(imagepath :'assets/icons/php.svg',LName:'PHP',QuestionAnswer: Questionansdata().QA_PHP),
    CompleteDataModel(imagepath :'assets/icons/javascript.svg',LName:'JavaScript',QuestionAnswer: Questionansdata().QA_JavaScript),
    CompleteDataModel(imagepath :'assets/icons/html.svg' ,LName:'HTML',QuestionAnswer: Questionansdata().QA_HTML),
    CompleteDataModel(imagepath :'assets/icons/css.svg',LName:'CSS',QuestionAnswer: Questionansdata().QA_CSS),
    CompleteDataModel(imagepath :'assets/icons/csharp.svg',LName:'C#',QuestionAnswer: Questionansdata().QA_Csharp),
    CompleteDataModel(imagepath :'assets/icons/flutter.svg',LName:'Flutter',QuestionAnswer: Questionansdata().QA_Flutter),
    CompleteDataModel(imagepath :'assets/icons/dart.svg',LName:'Dart',QuestionAnswer: Questionansdata().QA_Dart),
    CompleteDataModel(imagepath :'assets/icons/python.svg',LName:'Python',QuestionAnswer: Questionansdata().QA_Python),

  ];
}