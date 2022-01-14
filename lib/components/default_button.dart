import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 62,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          primary: Colors.white,
          backgroundColor: Colors.white,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Larsseit',
          ),
        ),
      ),
    );

  //   return Container(
  //     width: 310,
  //     height: 58,
  //     decoration: const BoxDecoration(
  //       borderRadius: BorderRadius.all(Radius.circular(16)),
  //       color: Color(0xff2f539d),
  //     ),
  //     child: const Text(
  //       'Get Start',
  //       style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 20,
  //         fontFamily: 'Larsseit',
  //         fontWeight: FontWeight.w500,
  //       ),
  //     ),
  //   );
  }
}
