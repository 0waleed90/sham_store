import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/feature/sign_in_log_in/presentation/view/widgets/enter_option.dart';

import '../../../../../core/util/app_router.dart';
import '../../../../../core/util/styles.dart';
import '../../../../../core/util/widgets/custom_text_field.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const SizedBox(height: 60),
          const Text('Login to your account', style: Styles.textStyle32),
          Text(
            'It’s great to see you again.',
            style: Styles.textStyle16.copyWith(fontSize: 22,fontWeight: .w400),
          ),
          const SizedBox(height: 30),
          const Text('Email', style: Styles.textStyle16),
          const CustomTextField(hintText: 'Enter your email address', readOnly: false,),
          const SizedBox(height: 30),
          const Text('Password', style: Styles.textStyle16),
          const CustomTextField(hintText: 'Enter your Password',readOnly: true,),
          const SizedBox(height: 15),
          Row(
            children: [
              const Text(
                'Forgot your password?  ',
                style: TextStyle(color: Color(0xff7E7E7E)),
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kRestPasswordView);
                },
                child: const Text(
                  'Reset your password',
                  style: TextStyle(fontWeight: .bold, color: Color(0xff1A1A1A)),
                ),
              ),
            ],
          ),const SizedBox(height:25),
          const EnterOption(),
          const Spacer(),
          Row(
            mainAxisAlignment: .center,
            children: [
              const Text(
                'Don’t have an account? ',
                style: TextStyle(color: Color(0xff7E7E7E)),
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: const Text(
                  'Join',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1A1A1A),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
