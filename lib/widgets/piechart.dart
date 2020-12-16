import 'dart:math';

import 'package:CredUI/data_configuration.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.only(right: 20),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: customShadow,
        color: primaryColor,
      ),
      child: Stack(
        children: [
          CustomPaint(
            foregroundPainter: PiChartPainter(),
            child: Container(),
          ),
          Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: customShadow,
                color: primaryColor,
              ),
              child: Center(
                child: Text(
                  '\u20B99862',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PiChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 100;

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;
    for (int i = 0; i < expenses.length; i++) {
      //logic to paint the arc
      var currentExpense = expenses[i];
      var sweepRadians = currentExpense['amount'] / total * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadians, false, paint);
      startRadian += sweepRadians;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
