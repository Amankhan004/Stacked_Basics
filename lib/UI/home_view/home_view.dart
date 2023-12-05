import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/home_view/home_viewmodel.dart';
import 'package:flutter_application_1/UI/home_view/widget/text_widget.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
              child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidgets(),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: Text("ADD")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToCounter();
                      },
                      child: Text("Navigate to counterView"))
                ],
              ),
            ),
          ));
        });
  }
}
