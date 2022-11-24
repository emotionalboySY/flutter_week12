import 'package:flutter/material.dart';

class Members with ChangeNotifier {
  List<MemberDetail> arr = [];

  addMember(String name, String number) {
    MemberDetail temp = MemberDetail(name, number);
    arr.add(temp);
    notifyListeners();
  }

  delMember(int index) {
    arr.removeAt(index);
    notifyListeners();
  }
}

class MemberDetail {
  String name = '';
  String number = '00000000';

  MemberDetail(String n, String no) {
    name = n;
    number = no;
  }
}