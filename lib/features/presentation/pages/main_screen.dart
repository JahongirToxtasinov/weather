import 'package:flutter/material.dart';
import 'package:weather/features/presentation/widgets/weather_widget.dart';
import '../../../assets/images.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.mainWallpaper),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            InfoWidget()
          ],
        ), // Replace with your actual content widget
      ),
    );
  }
}
