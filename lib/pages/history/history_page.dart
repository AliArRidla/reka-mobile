import 'package:flutter/material.dart';
import 'package:reka/theme.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "History of Mesin",
                      style: headingTextStyle,
                    ),
                    Text(
                      "Ini adalah daftar list mesin yang sudah di check",
                      style: tigaTextStyle,
                    ),
                    SizedBox(height: 6,)
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 6),
              //   child: Text(
              //     "History Log Mesin",
              //     style: duaTextStyle,
              //     textAlign: TextAlign.start,
              //   ),
              // ), // kok ngga bisa ?
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      // padding: EdgeInsets.symmetric(horizontal: 16),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: fieldColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // elevation: 0.0,
                      child: ListTile(
                        title: Text(
                          bulan[index],
                          style: empatTextStyle.copyWith(fontSize: 14),
                        ),
                        subtitle: Text('ini subtitle dari ' + bulan[index]),
                        leading: CircleAvatar(
                          child: Text(
                              bulan[index][0], // ambil karakter pertama text
                              style: limaTextStyle),
                        ),
                      ),
                    );
                  },
                  itemCount: bulan.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
