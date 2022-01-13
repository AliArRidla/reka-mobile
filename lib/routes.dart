import 'package:flutter/widgets.dart';
import 'package:reka/screens/loading_screen.dart';
import 'package:reka/screens/login/login_screen.dart';
// import 'package:reka/screens/splash/splash_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // WelcomeScreen.routeName: (context) => WelcomeScreen(),
  // ignore: prefer_const_constructors
  LoadingScreen.routeName: (context) => LoadingScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};