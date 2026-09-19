import 'package:flutter/material.dart';

import '../../../../../../core/util/styles.dart';
import '../../../../../../core/util/widgets/custom_text_field.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Account', style: Styles.textStyle32)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Full Name', style: Styles.textStyle16),
            CustomTextField(hintText: 'Enter your full name', readOnly: false),

            const SizedBox(height: 30),
            Text('Email', style: Styles.textStyle16),
            CustomTextField(
              hintText: 'Enter your email address',
              readOnly: false,
            ),
            const SizedBox(height: 30),
            Text('Your Number', style: Styles.textStyle16),
            CustomTextField(hintText: '00938444685', readOnly: false),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
