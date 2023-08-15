import 'package:flutter/material.dart';
import 'package:walk/constants/app_strings.dart';
import 'package:walk/pages/login_page/login_page.dart';
import 'package:walk/widgets/app_rotated_paw.dart';

import '../../constants/app_colors.dart';
import '../register_page/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.15,
              top: MediaQuery.sizeOf(context).height * 0.01,
              child: const AppRotatedPaw()),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.4,
              top: MediaQuery.sizeOf(context).height * 0.2,
              child: const AppRotatedPaw()),
          Positioned(
              left: MediaQuery.sizeOf(context).width * (-0.05),
              top: MediaQuery.sizeOf(context).height * 0.5,
              child: const AppRotatedPaw()),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.1,
              bottom: MediaQuery.sizeOf(context).height * 0.1,
              child: const AppRotatedPaw()),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Stack(
                  children: [
                    Text(
                      AppStrings.walk,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 100,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 25
                          ..color = Colors.white
                          ..strokeJoin = StrokeJoin.round,
                        shadows: const [
                          Shadow(
                            offset: Offset(15.0, 20.0),
                            blurRadius: 30.0,
                            color: Color.fromRGBO(0, 0, 0, 0.8),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      AppStrings.walk,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 100,
                      ),
                    ),
                  ],
                ),
                const Text(
                  AppStrings.trackYourDogs,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2A2B2A),
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage())),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: AppColors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        AppStrings.login,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFC145),
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage())),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: ShapeDecoration(
                      color: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        AppStrings.register,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
