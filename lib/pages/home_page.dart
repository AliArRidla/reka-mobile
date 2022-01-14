import 'package:flutter/material.dart';
import 'package:reka/theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // data dummy
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 1: Machines',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image(
            image: AssetImage("assets/images/profile.png"),
          ),
        ),
        title: Container(
          width: 60,
          child: Image(
            image: AssetImage("assets/images/logo.png"),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dashboard Mesin",
                      style: headingTextStyle,
                    ),
                    Text(
                      "Silahkan pilih mesin yang akan di check",
                      style: tigaTextStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: myProducts.length,
                    itemBuilder: (BuildContext ctx, index) {
                      // return Container(
                      //   alignment: Alignment.center,
                      //   child: Text(myProducts[index]["name"]),
                      //   decoration: BoxDecoration(
                      //       color: Colors.amber,
                      //       borderRadius: BorderRadius.circular(15)),
                      // );

                      return Container(
                        margin: EdgeInsets.all(15),
                        height: 127,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(myProducts[index]["name"]),
                        ),
                      );
                    }),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height,
              //   child:
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Machines',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
