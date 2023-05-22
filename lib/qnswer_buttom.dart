import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeview.dart';

// ignore: camel_case_types
class AnswerButton extends StatefulWidget {
  const AnswerButton({super.key, required this.currentAnswerIndex});

  final int currentAnswerIndex;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

// ignore: camel_case_types
class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 48,
          child: TextButton(
            onPressed: () {
              try {
                questions[currentQuestionIndex]
                    .answersList[(widget.currentAnswerIndex + 1)]
                    .isCorrect = false;
                // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                    .answersList[(widget.currentAnswerIndex + 2)]
                    .isCorrect = false;
                // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                    .answersList[(widget.currentAnswerIndex - 1)]
                    .isCorrect = false;
                // ignore: empty_catches
              } catch (a) {}
              try {
                questions[currentQuestionIndex]
                    .answersList[(widget.currentAnswerIndex - 2)]
                    .isCorrect = false;
                // ignore: empty_catches
              } catch (a) {}
              questions[currentQuestionIndex]
                  .answersList[(widget.currentAnswerIndex)]
                  .isCorrect = true;

              // ignore: avoid_print

              setState(() {});
            },
            style: TextButton.styleFrom(
              backgroundColor: questions[currentQuestionIndex]
                      .answersList[(widget.currentAnswerIndex)]
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
              questions[currentQuestionIndex]
                  .answersList[(widget.currentAnswerIndex)]
                  .answerText,
            ),
          ),
        ));
  }
}

// ignore: camel_case_types
class newContainer extends StatelessWidget {
  const newContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.black45,
            height: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Yes".tr),
                    const Icon(Icons.radio_button_off),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
