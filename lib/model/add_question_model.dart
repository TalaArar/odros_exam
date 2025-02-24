import 'dart:convert';

class AddExamModel {
  int? levelSer;
  int? itemSer;
  String? levelName;
  String? itemName;
  int? unitSer;
  String? unitName;
  int? subjectSer;
  String? subjectName;
  String? examQuestionText;
  String? subjectTitle;
  int? questionTypeSer;
  String? questionTypeName;
  String? answerOne;
  String? answerTwo;
  String? answerThree;
  String? answerFour;
  String? answerIsCorrect;

  AddExamModel({
    this.levelSer,
    this.itemSer,
    this.levelName,
    this.itemName,
    this.unitSer,
    this.unitName,
    this.subjectSer,
    this.subjectName,
    this.examQuestionText,
    this.subjectTitle,
    this.questionTypeSer,
    this.questionTypeName,
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
    levelName: json["LEVEL_NAME"],
    itemName: json["ITEM_NAME"],
    unitSer: json["UNIT_SER"],
    unitName: json["UNIT_NAME"],
    subjectSer: json["SUBJECT_SER"],
    subjectName: json["SUBJECT_NAME"],
    examQuestionText: json["EXAM_QUESTION_TEXT"],
    subjectTitle: json["SUBJECT_TITLE"],
    questionTypeSer: json["QUESTION_TYPE_SER"],
    questionTypeName: json["QUESTION_TYPE_NAME"],
    answerOne: json["ANSWER_ONE"],
    answerTwo: json["ANSWER_TWO"],
    answerThree: json["ANSWER_THREE"],
    answerFour: json["ANSWER_FOUR"],
    answerIsCorrect: json["ANSWER_IS_CORRECT"],
  );

  Map<String, dynamic> toJson() => {
    "LEVEL_SER": levelSer,
    "ITEM_SER": itemSer,
    "LEVEL_NAME": levelName,
    "ITEM_NAME": itemName,
    "UNIT_SER": unitSer,
    "UNIT_NAME": unitName,
    "SUBJECT_SER": subjectSer,
    "SUBJECT_NAME": subjectName,
    "EXAM_QUESTION_TEXT": examQuestionText,
    "SUBJECT_TITLE": subjectTitle,
    "QUESTION_TYPE_SER": questionTypeSer,
    "QUESTION_TYPE_NAME": questionTypeName,
    "ANSWER_ONE": answerOne,
    "ANSWER_TWO": answerTwo,
    "ANSWER_THREE": answerThree,
    "ANSWER_FOUR": answerFour,
    "ANSWER_IS_CORRECT": answerIsCorrect,
  };
}
