import 'package:car_app_ui/utils/enum.dart';
import 'package:flutter/material.dart';

class SelectionTabProvider extends ChangeNotifier {
//variable create
  int _selectionTab = 0;

  //get value
  int get selectionTab => _selectionTab;

  //set value
  void setSelectionTab(int tab) {
    _selectionTab = tab;
    notifyListeners();
  }
}
