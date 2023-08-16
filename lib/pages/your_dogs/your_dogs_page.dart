import 'package:flutter/material.dart';
import 'package:walk/constants/app_colors.dart';
import 'package:walk/constants/app_strings.dart';
import 'package:walk/widgets/app_separator.dart';

import '../../widgets/app_dog_card.dart';
import '../../widgets/app_rotated_paw.dart';

class YourDogsPage extends StatelessWidget {
  const YourDogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new dog',
        onPressed: () {},
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.yellow,
        child: const Icon(Icons.add_rounded, size: 30),
      ),
      backgroundColor: AppColors.yellow,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                left: MediaQuery.sizeOf(context).width * 0.15,
                top: MediaQuery.sizeOf(context).height * 0.001,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.yourDogs,
                        style: TextStyle(fontSize: 40, color: AppColors.brown)),
                    AppSeparator(color: AppColors.brown),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => AppDogCard(),
                      shrinkWrap: true,
                      itemCount: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
