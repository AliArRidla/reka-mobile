import 'package:flutter/material.dart';
import 'package:reka/theme.dart';
class FieldPengecekan extends StatefulWidget {
  const FieldPengecekan({ Key key }) : super(key: key);

  @override
  State<FieldPengecekan> createState() => _FieldPengecekanState();
}

class _FieldPengecekanState extends State<FieldPengecekan> {
  @override
  Widget build(BuildContext context) {
    
    String dropdownValue = 'Daily';
    
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Type Check',
                style: duaTextStyle,
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: fieldColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    // Image.asset("assets/images/alternate_email.png"),
                    Icon(
                      Icons.date_range,
                      color: secondaryTextColor,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                    
                      child: DropdownButtonFormField(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                        elevation: 16,
                        style: textButtonTextStyle,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'ThreeMonthly',
                          'Monthly',
                          'Weekly',
                          'Daily'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
    );
  }
}