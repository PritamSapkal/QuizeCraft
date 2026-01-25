class QuestionAns{
  QuestionAns({ required this.Question,required this.answerlist});

  String ? Question;
  List<String> ? answerlist;
  List<String> getshuffeledanswers(){

    final getshuffeledanswers = List.of(answerlist!);
    getshuffeledanswers.shuffle();
    return getshuffeledanswers;


  }
}