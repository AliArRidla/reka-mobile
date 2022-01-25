import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reka/providers/machine_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    getInit();
    // Timer(const Duration(seconds: 5),
    // () => Navigator.pushNamed(context, "/sign-in"));
    super.initState();
  }

  getInit() async {
    await Provider.of<MachineProvider>(context,listen: false).getMachines();
    Navigator.pushNamed(context, "/sign-in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
