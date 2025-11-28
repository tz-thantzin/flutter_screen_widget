import 'dart:math';

import 'package:flutter/material.dart';

class ColorLoader3 extends StatefulWidget {
  final double radius;
  final double dotRadius;

  const ColorLoader3({
    super.key,
    this.radius = 30.0,
    this.dotRadius = 3.0,
  });

  @override
  State<ColorLoader3> createState() => _ColorLoader3State();
}

class _ColorLoader3State extends State<ColorLoader3>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationRotation;
  late Animation<double> animationRadiusIn;
  late Animation<double> animationRadiusOut;

  late double radius;
  late double dotRadius;

  @override
  void initState() {
    super.initState();

    radius = widget.radius;
    dotRadius = widget.dotRadius;

    controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    animationRotation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 1.0, curve: Curves.linear),
      ),
    );

    animationRadiusIn = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.75, 1.0, curve: Curves.elasticIn),
      ),
    );

    animationRadiusOut = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.25, curve: Curves.elasticOut),
      ),
    );

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = widget.radius * animationRadiusIn.value;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = widget.radius * animationRadiusOut.value;
        }
      });
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Center(
        child: RotationTransition(
          turns: animationRotation,
          child: Center(
            child: Stack(
              children: [
                Transform.translate(
                  offset: const Offset(0, 0),
                  child: Dot(radius: radius, color: Colors.black12),
                ),
                _buildDot(0, Colors.amber),
                _buildDot(1, Colors.deepOrangeAccent),
                _buildDot(2, Colors.pinkAccent),
                _buildDot(3, Colors.purple),
                _buildDot(4, Colors.yellow),
                _buildDot(5, Colors.lightGreen),
                _buildDot(6, Colors.orangeAccent),
                _buildDot(7, Colors.blueAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDot(int index, Color color) {
    return Transform.translate(
      offset: Offset(
        radius * cos(index * pi / 4),
        radius * sin(index * pi / 4),
      ),
      child: Dot(radius: dotRadius, color: color),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class Dot extends StatelessWidget {
  final double? radius;
  final Color? color;

  const Dot({this.radius, this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
