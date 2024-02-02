import 'package:flutter/material.dart';
import 'package:refer_and_earn/presentation/refer_and_earn_screen/refer_and_earn_screen.dart';

class AppRoutes {
  static const String referAndEarnScreen = '/refer_and_earn_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        referAndEarnScreen: ReferAndEarnScreen.builder,
        initialRoute: ReferAndEarnScreen.builder
      };
}
