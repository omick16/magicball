import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';
import 'dart:math';

class MagicBallWidget extends StatefulWidget {
  const MagicBallWidget({super.key});

  @override
  State<MagicBallWidget> createState() {
    return _MagicBallState();
  }
}

class _MagicBallState extends State<MagicBallWidget> {
  var randomNumber = 1;

  void shake() {
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("Ask a question..."),
        const SizedBox(height: 50),
        Image.asset("assets/images/ball_images/$randomNumber.png", width: 300),
        const SizedBox(height: 30),
        TextButton(
          onPressed: shake,
          child: const Text(
            "SHAKE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}
