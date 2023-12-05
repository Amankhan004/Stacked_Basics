import 'package:flutter_application_1/UI/counter_view/counter_view.dart';
import 'package:flutter_application_1/UI/home_view/home_view.dart';
import 'package:flutter_application_1/services/counter_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView,initial: true),
  MaterialRoute(page: HomeView)
],
dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
]
)


class App{}