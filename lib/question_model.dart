import 'package:get/get.dart';

class Question {
  final String questionText;
  final List<Answer> answersList;
  final String image;
  final bool current = true;

  Question(this.questionText, this.answersList, this.image);
}

class Answer {
  final String answerText;
  late int isCorrectint;
  late bool isCorrect;
  late List<String> disease;

  Answer(this.answerText, this.isCorrectint, this.isCorrect, this.disease);
}

List<Question> getQuestions() {
  List<Question> list = [];

  //ADD questions and answer here

  list.add(Question(
      "Q1",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr, "muscle_contraction".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          ["partial_rupture".tr, "total_rupture".tr],
        ),
        Answer(
          "Q1_op3".tr,
          2,
          false,
          ["Q1_op".tr],
        ),
      ],
      "assets/images/question1.png"));

  list.add(Question(
      "Q2",
      [
        Answer(
          "Q2_op1".tr,
          0,
          false,
          ["bruise".tr],
        ),
        Answer(
          "severe_bleeding".tr,
          2,
          false,
          ["Q2_op2".tr, "partial_rupture".tr, "total_rupture".tr],
        ),
      ],
      "assets/images/question2.png"));

  list.add(Question(
      "Q3",
      [
        Answer(
          "knife_strike".tr,
          0,
          false,
          ["partial_rupture".tr],
        ),
        Answer(
          "tingling".tr,
          1,
          false,
          ["bruise".tr, "muscle_contraction".tr],
        ),
        Answer("else".tr, 2, false, []),
      ],
      "assets/images/question3.png"));

  list.add(Question(
      "Q4",
      [
        Answer(
          "severe_contraction".tr,
          0,
          false,
          [],
        ),
        Answer(
          "simple_contraction".tr,
          1,
          false,
          ["muscle_contraction".tr],
        ),
      ],
      "assets/images/question4.png"));

  list.add(Question(
      "Q5",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["inflammation".tr, "stress".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question5.png"));

  list.add(Question(
      "Q6",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["inflammation".tr, "stress".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question6.png"));

  list.add(Question(
      "Q7",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["inflammation".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question7.png"));

  list.add(Question(
      "Q8",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["inflammation".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question8.png"));

  list.add(Question(
      "Q9",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["stress".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question9.png"));

  list.add(Question(
      "Q10",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["partial_rupture".tr],
        ),
        Answer(
          "to_some_extent".tr,
          1,
          false,
          ["bruise".tr, "muscle_contraction".tr],
        ),
        Answer("no".tr, 2, false, []),
      ],
      "assets/images/question10.png"));

  list.add(Question(
      "Q11",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr],
        ),
        Answer(
          "to_some_extent".tr,
          1,
          false,
          ["Q2_op2".tr, "partial_rupture".tr, "total_rupture".tr],
        ),
        Answer("NO", 2, false,
            ["muscle_contraction".tr, "inflammation".tr, "stress".tr]),
      ],
      "assets/images/question11.png"));

  list.add(Question(
      "Q12",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr],
        ),
        Answer(
          "to_some_extent".tr,
          1,
          false,
          [
            "inflammation".tr,
            "Q2_op2".tr,
            "partial_rupture".tr,
            "total_rupture".tr,
          ],
        ),
        Answer("no".tr, 2, false, ["muscle_contraction".tr, "stress".tr]),
      ],
      "assets/images/question12.png"));

  list.add(Question(
      "Q13",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr, "partial_rupture".tr],
        ),
        Answer(
          "to_some_extent".tr,
          1,
          false,
          [],
        ),
        Answer("no".tr, 2, false, []),
      ],
      "assets/images/question13.png"));

  list.add(Question(
      "Q14",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["total_rupture".tr],
        ),
        Answer(
          "simple".tr,
          1,
          false,
          ["partial_rupture".tr],
        ),
        Answer("no".tr, 2, false, []),
      ],
      "assets/images/question14.png"));

  list.add(Question(
      "Q15",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr, "partial_rupture".tr, "total_rupture".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question15.png"));

  list.add(Question(
      "Q16",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["muscle_contraction".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question16.png"));

  list.add(Question(
      "Q17",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["stress".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question17.png"));

  list.add(Question(
      "Q18",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          [],
        ),
        Answer(
          "simple_movement".tr,
          1,
          false,
          ["bruise".tr, "inflammation".tr, "Q1_op".tr],
        ),
        Answer("no".tr, 2, false,
            ["muscle_contraction".tr, "stress".tr, "total_rupture".tr]),
      ],
      "assets/images/question18.png"));

  list.add(Question(
      "Q19",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["bruise".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question19.png"));

  list.add(Question(
      "َQ20",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["Q1_op".tr, "partial_rupture".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question20.png"));

  list.add(Question(
      "َQ21",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["muscle_contraction".tr, "partial_rupture".tr, "total_rupture".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        )
      ],
      "assets/images/question21.png"));

  list.add(Question(
      "Q22",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["muscle_contraction".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question22.png"));

  list.add(Question(
      "Q23",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["inflammation".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question23.png.jpg"));

  list.add(Question(
      "Q24",
      [
        Answer(
          "Yes".tr,
          0,
          false,
          ["stress".tr],
        ),
        Answer(
          "no".tr,
          1,
          false,
          [],
        ),
      ],
      "assets/images/question24.png.jpg"));

  return list;
}
