import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: .xy(1, -0.9),
          child: Text(
            'Define yourself in your unique way.',
            textAlign: .left,
            style: TextStyle(fontSize: 64, fontWeight: .w600, height: 0.8),
          ),
        ),
        Align(
          alignment: const .xy(0, 0.1),
          child: Image.asset(
            'assets/photo/Vector (11).png',
            fit: BoxFit.fitWidth,
            color: Colors.black26,
          ),
        ),
        Align(
          alignment: const .xy(0, 0.35),
          child: Image.asset(
            'assets/photo/Vector (11).png',
            fit: BoxFit.fitWidth,
            color: Colors.black26,
          ),
        ),
        Align(
          alignment: const .xy(0, 0.6),
          child: Image.asset(
            'assets/photo/Vector (11).png',
            fit: BoxFit.fitWidth,
            color: Colors.black26,
          ),
        ),
        Align(
          alignment: const .xy(0, 0.85),
          child: Image.asset(
            'assets/photo/Vector (11).png',
            fit: BoxFit.fitWidth,
            color: Colors.black26,
          ),
        ),

        Align(
          alignment: const .xy(1, -0.4),
          child: Image.asset('assets/photo/person.png', height: 770),
        ),
        Align(
          alignment: const .xy(0, 0.9),
          child: CustomButton(
            text: 'Get Started',
            icon: Icons.arrow_forward,
            color: Colors.black,
            textColor: Colors.white,
            width: 341,
            onTap: () {
              GoRouter.of(context).push('/SignInView');
            },
          ),
        ),
      ],
    );
  }
}
