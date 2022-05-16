import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interspark_assignment/app_module.dart';
import 'package:interspark_assignment/main.reflectable.dart';
import 'package:interspark_assignment/view/splash_screen.dart';
import 'package:reflectable/reflectable.dart';
import 'app_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeReflectable();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModularApp(
     module:AppModule(),
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  SplashScreen(),
      )

    );
  }
}
