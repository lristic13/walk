import 'package:flutter/material.dart';
import 'package:walk/constants/app_strings.dart';
import 'package:walk/pages/login_page/login_page.dart';
import 'package:walk/widgets/app_rotated_paw.dart';

import '../../constants/app_colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          const Positioned(
            left: 234.24,
            top: 49,
            child: AppRotatedPaw(),
          ),
          const Positioned(
            left: 343.24,
            top: 260,
            child: AppRotatedPaw(),
          ),
          const Positioned(
            left: 167.24,
            top: 509,
            child: AppRotatedPaw(),
          ),
          const Positioned(
            left: 243.24,
            top: 744,
            child: AppRotatedPaw(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppStrings.register,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 64,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: AppStrings.email,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 3, color: AppColors.black))),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: AppStrings.username,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 3, color: AppColors.black))),
                        ),
                        const SizedBox(height: 5),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: AppStrings.password,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 3, color: AppColors.black))),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 81,
                    decoration: ShapeDecoration(
                      color: AppColors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        AppStrings.register,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFC145),
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      AppStrings.alreadyHaveAcc,
                      style: TextStyle(
                        color: Color(0xFF2A2B2A),
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage())),
                      child: const Text(
                        AppStrings.here,
                        style: TextStyle(
                          color: Color(0xFF714133),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
