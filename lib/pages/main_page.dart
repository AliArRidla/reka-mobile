import 'package:flutter/material.dart';
import 'package:reka/pages/history/history_page.dart';
import 'package:reka/pages/home/home_page.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/pages/settings/settings_page.dart';
import 'package:reka/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // data dummy
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();
  int selectedPage = 0;

  final List<Widget> _myPages = [HomePage(), HistoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, "/profile"),
            child: Image(
              image: AssetImage("assets/images/profile.png"),
            ),
          ),
        ),
        title: Container(
          width: 80,
          child: Center(
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image(
              image: AssetImage("assets/images/search.png"),
            ),
          )
        ],
      ),
      body: _myPages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex:1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedPage,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
