import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/util/app_router.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(const MyStore());

}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(

debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,);
  }
}
