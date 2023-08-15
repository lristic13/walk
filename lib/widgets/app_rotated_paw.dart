import 'package:flutter/material.dart';

class AppRotatedPaw extends StatelessWidget {
  const AppRotatedPaw({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(0.0, 0.0)
        ..rotateZ(0.47),
      child: Opacity(
        opacity: 0.2,
        child: Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/dog-paw.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
