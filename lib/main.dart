import 'package:flutter/material.dart';
import 'package:reka/pages/sign_in_page.dart';
import 'package:reka/pages/splash_page.dart';

import 'package:reka/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REKAINDO',      
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
      },
    );
  }
}
