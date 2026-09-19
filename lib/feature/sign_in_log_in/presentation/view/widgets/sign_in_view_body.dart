import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/app_router.dart';
import 'package:my_store/core/util/styles.dart';
import 'package:my_store/feature/sign_in_log_in/presentation/view/widgets/enter_option.dart';

import '../../../../../core/util/widgets/custom_text_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const SizedBox(height: 60),
          Text('Create an account', style: Styles.textStyle32),
          Text(
            'Lets create your account',
            style: Styles.textStyle16.copyWith(fontSize: 22,fontWeight: .w400),
          ),
          const SizedBox(height: 30),
          Text('Full Name', style: Styles.textStyle16),
          CustomTextField(hintText: 'Enter your full name', readOnly: false,),

          const SizedBox(height: 30),
          Text('Email', style: Styles.textStyle16),
          CustomTextField(hintText: 'Enter your email address', readOnly: false,),
          const SizedBox(height: 30),
          Text('Password', style: Styles.textStyle16),
          CustomTextField(hintText: 'Enter your Password', readOnly: false,),
          const SizedBox(height: 15),
          Text(
            'By signing up you agree to our Terms, Privacy Policy, and Cookie Use',
          ),

          const SizedBox(height: 20),
          const EnterOption(),
          const Spacer(),
          Row(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(color: Color(0xff7E7E7E)),
              ),
              GestureDetector(
                onTap: (){GoRouter.of(context).push(AppRouter.kLogInView);},
                child: Text(
                  'Log In',
                  style: TextStyle(fontWeight: .bold,  color: Color(0xff1A1A1A)),
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
