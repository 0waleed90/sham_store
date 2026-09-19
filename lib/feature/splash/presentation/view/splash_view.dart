import 'package:flutter/material.dart';
import 'package:my_store/feature/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body:  SplashViewBody(),
    );
  }
}
