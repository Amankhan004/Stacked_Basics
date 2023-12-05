import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/counter_view/counter_viewmodel.dart';
import 'package:flutter_application_1/UI/counter_view/widget/text_widget.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
              child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: Text("ADD")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToHome();
                      },
                      child: Text("Navigate to HomeView"))
                ],
              ),
            ),
          ));
        });
  }
}
