import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/widgets/custom_button.dart';

import '../../../../../core/util/styles.dart';
import '../../../../../core/util/widgets/custom_text_field.dart';

class RestPasswordViewBody extends StatelessWidget {
  const RestPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const Text('Forgot password', style: Styles.textStyle32),
          Text(
            'Enter your email for the verification process. We will send 4 digits code to your email.',
            style: Styles.textStyle16.copyWith(fontSize: 22, fontWeight: .w400),
          ),
          const SizedBox(height: 30),
          const Text('Email', style: Styles.textStyle16),
          const CustomTextField(hintText: 'Enter your email address', readOnly: false,),
          const Spacer(),
          CustomButton(
            text: 'send email',
            color: Colors.black,
            textColor: Colors.white,
            width: 500,
            onTap: () {},
          ),
          const SizedBox(height: 25),
          CustomButton(
            text: 'return to login page',
            color: Colors.black,
            textColor: Colors.white,
            width: 500,
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
