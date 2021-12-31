import 'package:flutter/material.dart';
import 'package:login_project/login_page.dart';
import 'package:login_project/utils/routes.dart';
import 'package:login_project/welcome_page.dart';
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
      routes: {
        MyRouts.LoginRout: (context) => LoginPage(),
        MyRouts.WelcomeRout: (context) => WelcomePage(),
        MyRouts.HomepageRout: (context) => HomePage(),
      },
    );
  }
}
