import 'dart:convert';

class AddExamModel {
  int? levelSer;
  int? itemSer;
  String? examQuestionText;
  String? answerOne;
  String? answerTwo;
  String? answerThree;
  String? answerFour;
  String? answerIsCorrect;

  AddExamModel({
    this.levelSer,
    this.itemSer,
    this.examQuestionText,
    this.answerOne,
    this.answerTwo,
    this.answerThree,
    this.answerFour,
    this.answerIsCorrect,
  });

  factory AddExamModel.fromRawJson(String str) => AddExamModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddExamModel.fromJson(Map<String, dynamic> json) => AddExamModel(

    levelSer: json["LEVEL_SER"],
    itemSer: json["ITEM_SER"],
    examQuestionText: json["EXAM_QUESTION_TEXT"],
    answerOne: json["ANSWER_ONE"],
    answerTwo: json["ANSWER_TWO"],
    answerThree: json["ANSWER_THREE"],
    answerFour: json["ANSWER_FOUR"],
    answerIsCorrect: json["ANSWER_IS_CORRECT"],
  );

  Map<String, dynamic> toJson() => {
    "LEVEL_SER": levelSer,
    "ITEM_SER": itemSer,
    "EXAM_QUESTION_TEXT": examQuestionText,
    "ANSWER_ONE": answerOne,
    "ANSWER_TWO": answerTwo,
    "ANSWER_THREE": answerThree,
    "ANSWER_FOUR": answerFour,
    "ANSWER_IS_CORRECT": answerIsCorrect,
  };
}
