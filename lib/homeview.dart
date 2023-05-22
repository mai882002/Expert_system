import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/question_model.dart';
import 'package:task/question_model_view.dart';
import 'package:task/result.dart';
import 'package:task/result_method.dart';

import 'answer_model_view.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

List<Question> questions = getQuestions();
int currentQuestionIndex = 0;

List<String> result1 = [];
List<String> result2 = [];
var map = {};
int theValue = 0;
// ignore: prefer_typing_uninitialized_variables
var theKey;

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff022E58),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      contentPadding: const EdgeInsets.all(20),
                      content: SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'language'.tr,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Get.updateLocale(const Locale('en', 'US'));
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const home();
                                  },
                                ));
                                setState(() {});
                              },
                              splashColor: Colors.white,
                              highlightColor: Colors.blue,
                              child: Container(
                                height: 55,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    "English",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.updateLocale(const Locale('ar', 'EG'));
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const home();
                                  },
                                ));
                                setState(() {});
                              },
                              splashColor: Colors.white,
                              highlightColor: Colors.blue,
                              child: Container(
                                height: 55,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    "اللغة العربية",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.language_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "language".tr,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Doctork",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              QuestionsModel(
                currentQuestionIndex: currentQuestionIndex,
                questions: questions,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                questions[currentQuestionIndex].image,
                height: 200,
              ),
              Expanded(
                child: AnswerView(currentQuestionIndex: currentQuestionIndex),
              ),
              SizedBox(
                height: 48,
                child: TextButton(
                  onPressed: () {
                    if (currentQuestionIndex <= 22) {
                      for (var element in questions[currentQuestionIndex]
                          .answersList[answerIndex]
                          .disease) {
                        result1.add(element);
                      }
                      for (var element in result1) {
                        result2.add(element);
                      }
                      result1.clear();

                      currentQuestionIndex++;
                      setState(() {});
                    } else {
                      for (var x in result2) {
                        map[x] = !map.containsKey(x) ? (1) : (map[x] + 1);
                      }
                      map.forEach((k, v) {
                        if (v > theValue) {
                          theValue = v;
                          theKey = k;
                        }
                      });
                      List<String> a = result(theKey, theValue);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => result_view(
                            result,
                            res: a[0],
                            ress: a[1],
                            image: a[2],
                          ),
                        ),
                      );
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                  ),
                  child: Text("next".tr),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
