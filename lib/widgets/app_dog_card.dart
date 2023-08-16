import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppDogCard extends StatelessWidget {
  const AppDogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.yellow,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/bigi.jpg'),
                    radius: 47,
                    backgroundColor: AppColors.brown,
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Bigi',
                        style:
                            TextStyle(fontSize: 35, color: AppColors.yellow)),
                    Text(
                      'Walks today: 2',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.yellow,
                      ),
                    ),
                    Text(
                      'Treats today: 10',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.yellow,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: AppColors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Treat?',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 25,
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: AppColors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Walk?',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 25,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
