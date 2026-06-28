import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:quizecraft/data_model/QuestionAns_data_model.dart';

import 'QuestionAns_data_model.dart';

class CompleteDataModel {
  CompleteDataModel({required this.imagepath,required this.LName,required this.QuestionAnswer});
  String  ? imagepath;
  String ? LName;
  List<QuestionAns> ? QuestionAnswer;
}