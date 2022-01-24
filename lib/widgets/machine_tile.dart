import 'package:flutter/material.dart';
import 'package:reka/models/machine_model.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/theme.dart';

class MachineTile extends StatelessWidget {
  final MachineModel machine;
  MachineTile(this.machine);

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => PengecekanPage(machine),
    //       ),
    //     );
    //   },
    //   child: Container(
    //     margin: EdgeInsets.all(10),
    //     height: 127,
    //     decoration: BoxDecoration(
    //       color: fieldColor,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     child: Center(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(bottom: 20),
    //             child: Image(
    //               image: AssetImage("assets/images/mesins/machine-1.png"),
    //             ),
    //           ),
    //           Text(
    //             '${machine.nama_mesin}',
    //             style: duaTextStyle.copyWith(
    //                 color: primaryColor, fontWeight: FontWeight.w500),
    //           ),
    //           Text(
    //             // myProducts[index]["name"],
    //             '\$${machine.type_mesin}',
    //             style: tigaTextStyle.copyWith(color: secondaryColor),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    // return Text("vona");
    // return GridView.builder(
    //     gridDelegate:
    //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //     itemCount: 3,
    //     itemBuilder: (BuildContext ctx, index) {
    //       return InkWell(
    //         onTap: () {
    //           // Navigator.pushNamed(context, '/pengecekan');
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => PengecekanPage(machine),
    //             ),
    //           );
    //         },
    //         child: Container(
    //           margin: EdgeInsets.all(10),
    //           height: 127,
    //           decoration: BoxDecoration(
    //             color: fieldColor,
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: Center(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.only(bottom: 20),
    //                   child: Image(
    //                     image: AssetImage("assets/images/mesins/machine-1.png"),
    //                   ),
    //                 ),
    //                 Text(
    //                   "Nama Mesin",
    //                   style: duaTextStyle.copyWith(
    //                       color: primaryColor, fontWeight: FontWeight.w500),
    //                 ),
    //                 Text(
    //                   // myProducts[index]["name"],
    //                   "haua",
    //                   style: tigaTextStyle.copyWith(color: secondaryColor),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       );
    //     });

      return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PengecekanPage(machine),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: 5,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // child: Image(
                // product.galleries[0].url,
                child: Image(image: AssetImage("assets/images/profile.png"),
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // product.category.name,
                    machine.nama_mesin,
                    style: duaTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    // product.name,
                    machine.type_mesin,
                    style: tigaTextStyle.copyWith(
                      fontSize: 16,
                      // fontWeight: semiBold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${machine.nama_mesin}',
                    style: empatTextStyle.copyWith(
                      // fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
