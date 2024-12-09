import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class FillColor extends StatefulWidget {
  const FillColor({super.key});

  @override
  State<FillColor> createState() => _FillColorState();
}

class _FillColorState extends State<FillColor>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            color: Colors.grey,
            child: CustomPaint(
              painter: PaintColor(animationController: _animationController),
              size: Size(300, 400),
            ),
          ),
        )
      ],
    );
  }
}

class PaintColor extends CustomPainter {
  PaintColor({AnimationController? animationController})
      : _animationController = animationController,
        // ignore: unused_field
        super(repaint: animationController);
  final AnimationController? _animationController;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width / 2, 8), Offset(size.width / 2, size.height), [
        Colors.red,
        Colors.green,
      ]);
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(paint);
    // canvas.drawColor(Colors.amber, BlendMode.src);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
