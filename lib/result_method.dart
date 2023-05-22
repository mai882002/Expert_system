import 'package:get/get_utils/get_utils.dart';

List<String> result(final String disease, final int counter) {
  List<String> res = [];
  final String diseases = disease;
  if (diseases == "bruise".tr && 5 <= counter && counter <= 9) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("bruise_treat".tr);

    res.add("assets/images/bruise.jpg");
  } else if (diseases == "muscle_contraction".tr &&
      5 <= counter &&
      counter <= 9) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_muscle_contraction".tr);

    res.add("assets/images/Muscle contraction.jpg");
  } else if (diseases == "inflammation".tr && 4 <= counter && counter <= 7) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_inflammation".tr);

    res.add("assets/images/inflammation.jpg");
  } else if (diseases == "stress".tr && 4 <= counter && counter <= 7) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_stress".tr);

    res.add("assets/images/stress.jpg");
  } else if (diseases == "Q1_op".tr && 3 <= counter && counter <= 5) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_tightening_of_muscle".tr);

    res.add("assets/images/Tightening of the muscles.jpg");
  } else if (diseases == "partial_rupture".tr &&
      7 <= counter &&
      counter <= 10) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_partial_rupture".tr);

    res.add("assets/images/Partial rupture.jpg");
  } else if (diseases == "total_rupture".tr && 6 <= counter && counter <= 8) {
    res.add("${"symptoms_form".tr} $diseases");

    res.add("desc_total_rupture".tr);

    res.add("assets/images/Total rupture.jpg");
  } else {
    res.add("error".tr);
    res.add("error".tr);
    res.add("assets/images/error.png");
  }

  return res;
}
