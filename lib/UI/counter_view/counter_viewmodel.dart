import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:flutter_application_1/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends ReactiveViewModel{
  final navigationService=locator<NavigationService>();
  final counterService=locator<CounterService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [counterService];


  int  get count=> counterService.count.value;

  addValue(){
    counterService.addCounterValue();
    rebuildUi();
  }
  navigateToHome(){
    navigationService.navigateToHomeView();
  }

}