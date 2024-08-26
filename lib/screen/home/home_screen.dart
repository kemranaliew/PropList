import 'package:flutter/material.dart';
import 'package:proplist/screen/home/components/bottom_buttons.dart';
import 'package:proplist/screen/home/components/categories.dart';
import 'package:proplist/screen/home/components/custom_app_bar.dart';
import 'package:proplist/screen/home/components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CustomAppBar(),
              Categories(),
              Houses(),
            ],
          ),
          BottomButtons(),
        ],
      ),
    );
  }
}
