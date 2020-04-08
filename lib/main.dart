import 'package:coronavirus_no_brasil/core/constants.dart';
import 'package:coronavirus_no_brasil/app/dashboard/dashboard_screen.dart';
import 'package:coronavirus_no_brasil/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CoronavirusNoBrasil());

class CoronavirusNoBrasil extends StatefulWidget {
  @override
  _CoronavirusNoBrasilState createState() => _CoronavirusNoBrasilState();
}

class _CoronavirusNoBrasilState extends State<CoronavirusNoBrasil> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: Constants.appName,
      initialRoute: Constants.splashScreen,
      routes: {
        Constants.splashScreen: (context) => const SplashScreen(),
        Constants.dashboardScreen: (context) => DashboardScreen(),
      },
    );
  }
}
