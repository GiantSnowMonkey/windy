import 'package:flutter/material.dart';

class IsLoadingProvider extends ChangeNotifier {
  bool isLoading;
  IsLoadingProvider({this.isLoading = false});
  void changeState(bool newValue) {
    Future.delayed(const Duration(milliseconds: 600)).then((value) {
      isLoading = newValue;
      notifyListeners();
    });
  }
}
