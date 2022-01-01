import 'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/login_page.dart';
import 'pages/welcome_page.dart';
import 'utils/routes.dart';

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
