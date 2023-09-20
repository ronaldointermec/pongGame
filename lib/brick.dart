
import 'package:flutter/material.dart';

class MyBrick extends StatelessWidget {
  final x;
  final y;
  final brickWidth; // out of 2
  final thisIsEneny;

  MyBrick({super.key, required this.x, required this.y, required this.brickWidth, this.thisIsEneny});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((2 * x + brickWidth) / (2 - brickWidth), y),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: thisIsEneny ? Colors.deepPurple[300] : Colors.pink[300],
          height: 20,
          width: MediaQuery
              .of(context)
              .size
              .width * brickWidth / 2,
        ),
      ),
    );
  }
}
