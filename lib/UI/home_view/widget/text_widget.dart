import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/home_view/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TextWidgets extends ViewModelWidget<HomeViewModel> {
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Text(viewModel.count.toString());
  }
}
