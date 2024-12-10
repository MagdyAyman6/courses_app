// import 'package:flutter/material.dart';
//
// class CustomButton extends StatelessWidget {
//   const CustomButton({super.key, this.onTap, required this.text, this.color, required this.style});
//
//   final void Function()? onTap;
//   final String text;
//   final Color? color;
//   final TextStyle style;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(33),
//       ),
//       child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.transparent,
//             shadowColor: Colors.transparent,
//           ),
//           onPressed: onTap,
//           child: Text(
//             text,
//             style: Styles.textStyle18,
//           )),
//     );
//   }
// }