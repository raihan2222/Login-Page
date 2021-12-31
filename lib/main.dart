import 'package:flutter/material.dart';
import 'package:login_project/login_page.dart';
import 'package:login_project/utils/routes.dart';
import 'homepage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        MyRouts.LoginRout: (context) => LoginPage(),
      },
    );
  }
}
