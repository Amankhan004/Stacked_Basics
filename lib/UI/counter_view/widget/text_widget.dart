import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/counter_view/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TextWidget extends ViewModelWidget<CounterViewModel> {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context, CounterViewModel viewModel) {
    return Text(viewModel.count.toString());
  }
}
