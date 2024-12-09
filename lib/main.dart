import 'package:custom_painter/fill_color.dart';
import 'package:custom_painter/sheared_preffrence.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Center(
//           child: Container(
//             color: Colors.grey.shade500,
//             child: CustomPaint(
//               painter: Mypainter(),
//               size: Size(300, 400),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class Mypainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // TODO: implement paint
//     Paint paint = Paint();
//     paint.strokeWidth = 3;
//     paint.color = Colors.white;
//     Paint paint1 = Paint();
//     paint1.strokeWidth = 3;
//     paint1.color = Colors.orange;
//     paint.style = PaintingStyle.stroke;
//     // x-150,y-200
//     // canvas.drawLine(Offset.zero, Offset(size.width / 2, 100), paint);
//     // canvas.drawLine(Offset(size.width / 2, 100), Offset(300, 0), paint);
//     // canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
//     Offset center = Offset(size.width / 2, size.height / 2);
//     // canvas.drawRect(
//     //     Rect.fromCenter(center: center, width: 200, height: 100), paint);
//     // canvas.drawRect(Rect.fromCircle(center: center, radius: 40), paint);
//     // canvas.drawRect(Rect.fromLTWH(50, 50, 300, 400), paint);
//     // canvas.drawRect(Rect.fromLTRB(100, 300, 0, 0), paint);
//     // canvas.drawOval(Rect.fromLTWH(50, 100, 200, 100), paint);
//     Rect rect = Rect.fromLTRB(10, 20, 100, 200);
//     // canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(16)), paint);
//     // canvas.drawRRect(
//     //     RRect.fromRectAndCorners(
//     //       rect,
//     //       topLeft: Radius.circular(16),
//     //       bottomRight: Radius.circular(16),
//     //     ),
//     //     paint);
//     // canvas.drawRRect(RRect.fromRectXY(rect, 75, 25), paint);
//     // paint.style = PaintingStyle.fill;
//     // Rect bigRect = Rect.fromLTRB(10, 20, 100, 200);
//     // Rect smallRect = Rect.fromLTRB(20, 30, 100, 180);
//     // RRect bigRRect = RRect.fromRectXY(bigRect, 75, 25);
//     // RRect smallRRect = RRect.fromRectXY(smallRect, 75, 25);
//     // canvas.drawDRRect(bigRRect, smallRRect, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     return false;
//   }
// }
