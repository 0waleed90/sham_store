import 'package:flutter/material.dart';
import 'package:my_store/feature/sign_in_log_in/presentation/view/widgets/rest_password_view_body.dart';

class RestPasswordView extends StatelessWidget {
  const RestPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const RestPasswordViewBody());
  }
}
