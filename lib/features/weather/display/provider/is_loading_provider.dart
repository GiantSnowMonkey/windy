import 'package:flutter/material.dart';

class IsLoadingProvider extends ChangeNotifier {
  bool isLoading;
  IsLoadingProvider({this.isLoading = false});
  void changeState(bool newValue) {
    isLoading = newValue;
    notifyListeners();
  }
}
