// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reka/pages/main_page.dart';
import 'package:reka/pages/manual_books/manual_book_page.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/pages/profile/profile_page.dart';
import 'package:reka/pages/sign_in_page.dart';
import 'package:reka/pages/splash_page.dart';
import 'package:reka/providers/auth_provider.dart';
import 'package:reka/providers/machine_provider.dart';
import 'package:reka/providers/parameter_provider.dart';

// import 'package:reka/theme.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MachineProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ParameterProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'REKAINDO',
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/home': (context) => MainPage(),
          // '/pengecekan': (context) => PengecekanPage(),
          '/manual-books': (context) => ManualBookPage(),
          '/profile': (context) => ProfilePage(),
        },
      ),
    );
  }
}
