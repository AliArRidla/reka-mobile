import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:reka/screens/loading_screen.dart';
import 'package:reka/screens/splash/splash_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoadingScreen.routeName: (context) => LoadingScreen(),
  
};