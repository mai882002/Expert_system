// ignore_for_file: empty_catches, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:task/question_model.dart';

int answerIndex = 0;

// ignore: camel_case_types, must_be_immutable
class AnswerView extends StatefulWidget {
  AnswerView({
    super.key,
    required this.currentQuestionIndex,
  });

  int currentQuestionIndex;

  @override
  State<AnswerView> createState() => _AnswerViewState();
}

// ignore: camel_case_types
class _AnswerViewState extends State<AnswerView> {
  final List<Question> questions = getQuestions();

  int currentQuestionIndex = 0;

  late int currentAnswerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: questions[widget.currentQuestionIndex].answersList.length,
      itemBuilder: (context, index) {
        if (widget.currentQuestionIndex == currentQuestionIndex) {
          currentAnswerIndex++;
        } else {
          currentQuestionIndex = widget.currentQuestionIndex;
          currentAnswerIndex = 0;
          currentAnswerIndex++;
        }

        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 48,
            child: TextButton(
              onPressed: () {
                try {
                  questions[currentQuestionIndex]
                      .answersList[(index + 1)]
                      .isCorrect = false;
                  // ignore: empty_catches
                } catch (a) {}
                try {
                  questions[currentQuestionIndex]
                      .answersList[(index + 2)]
                      .isCorrect = false;
                  // ignore: empty_catches
                } catch (a) {}
                try {
                  questions[currentQuestionIndex]
                      .answersList[(index - 1)]
                      .isCorrect = false;
                } catch (a) {}
                try {
                  questions[currentQuestionIndex]
                      .answersList[(index - 2)]
                      .isCorrect = false;
                } catch (a) {}
                questions[currentQuestionIndex].answersList[(index)].isCorrect =
                    true;
                answerIndex = index;

                setState(() {});
              },
              style: TextButton.styleFrom(
                backgroundColor: questions[currentQuestionIndex]
                        .answersList[(index)]
                        .isCorrect
                    ? const Color.fromARGB(255, 98, 226, 103)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
              child: Text(
                questions[currentQuestionIndex].answersList[(index)].answerText,
              ),
            ),
          ),
        );
      },
    );
  }
}
