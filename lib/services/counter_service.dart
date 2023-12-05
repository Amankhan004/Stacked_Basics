
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CounterService with ListenableServiceMixin {
  ValueNotifier<int> count =ValueNotifier<int>(0);

  addCounterValue() {
    count.value++;
    notifyListeners();
  }
}
