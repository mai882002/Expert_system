import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

// ignore: camel_case_types, must_be_immutable
class result_view extends StatelessWidget {
  result_view(result,
      {super.key, required this.res, required this.ress, required this.image});

  String res;
  String ress;
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff022E58),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  res,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "treatment".tr,
                  style: const TextStyle(
                    color: Color.fromARGB(110, 205, 230, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ress,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(image),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
