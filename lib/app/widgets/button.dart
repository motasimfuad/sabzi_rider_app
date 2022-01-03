import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Color btnColor;
  Color textColor;
  num btnHeight;

  Button({
    Key? key,
    required this.text,
    this.btnColor = Colors.orange,
    this.textColor = Colors.white,
    this.btnHeight = 54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: btnColor,
        fixedSize: Size(double.infinity, btnHeight.toDouble()),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


// Container(
//       color: btnColor,
//       height: height?.toDouble(),
//       child: Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: textColor,
//           ),
//         ),
//       ),
//     )