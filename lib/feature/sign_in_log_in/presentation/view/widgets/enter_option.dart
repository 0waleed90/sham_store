import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/app_router.dart';

import '../../../../../core/util/styles.dart';
import '../../../../../core/util/widgets/custom_button.dart';

class EnterOption extends StatelessWidget {
  const EnterOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Create an account',
          color: Color(0xffCACACA),
          textColor: Colors.white,
          width: 500,
          onTap: () {
            GoRouter.of(context).go(AppRouter.kHomeView);
          },
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 2,
                color: Colors.black,
                indent: 0,
                endIndent: 10,
              ),
            ),
            Text('Or', style: Styles.textStyle20.copyWith(fontWeight: .w400)),
            Expanded(
              child: Divider(
                thickness: 2,
                color: Colors.black,
                indent: 10,
                endIndent: 0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        CustomButton(
          icon: Icons.gite_outlined,
          text: 'Sign Up with Google',
          color: Colors.white,
          textColor: Colors.black,
          width: 500,
          borderColor: Colors.black12,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        CustomButton(
          icon: Icons.gite_outlined,
          text: 'Sign Up with Facebook',
          color: Colors.blue,
          textColor: Colors.white,

          width: 500,
          borderColor: Colors.black12,
          onTap: () {},
        ),
      ],
    );
  }
}
