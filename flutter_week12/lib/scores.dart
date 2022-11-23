import 'package:flutter/material.dart';

class Scores with ChangeNotifier {
  int midTermExam = 30;
  int finalExam = 30;

  decreaseMidTerm() {
    midTermExam -= 1;
    notifyListeners();
  }

  increaseMidTerm() {
    midTermExam += 1;
    notifyListeners();
  }

  decreaseFinal() {
    finalExam -= 1;
    notifyListeners();
  }

  increaseFinal() {
    finalExam += 1;
    notifyListeners();
  }
}