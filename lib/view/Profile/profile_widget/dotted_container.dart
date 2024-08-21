import 'package:flutter/material.dart';

class DottedBorderContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Color borderColor;
  final double borderWidth;
  final double dotSpacing;
  final double borderRadius;

  const DottedBorderContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    this.borderColor = Colors.black,
    this.borderWidth = 2.0,
    this.dotSpacing = 4.0,
    this.borderRadius = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: DottedBorderPainter(
              borderColor: borderColor,
              borderWidth: borderWidth,
              dotSpacing: dotSpacing,
              borderRadius: borderRadius,
            ),
          ),
          Center(child: child),
        ],
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;
  final double dotSpacing;
  final double borderRadius;

  DottedBorderPainter({
    required this.borderColor,
    required this.borderWidth,
    required this.dotSpacing, 
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final double dotSize = borderWidth;
    final double spacing = dotSpacing + dotSize;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          Radius.circular(borderRadius)));

    double dashOffset = 0.0;
    final dashArray = [dotSize, spacing];

    for (var i = 0; i < path.computeMetrics().length; i++) {
      final metric = path.computeMetrics().elementAt(i);
      while (dashOffset < metric.length) {
        final start = metric.getTangentForOffset(dashOffset)!.position;
        dashOffset += dashArray[0];
        if (dashOffset < metric.length) {
          final end = metric.getTangentForOffset(dashOffset)!.position;
          canvas.drawLine(start, end, paint);
        }
        dashOffset += dashArray[1];
      }
      dashOffset = 0.0;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}