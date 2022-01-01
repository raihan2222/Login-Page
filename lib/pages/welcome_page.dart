import 'package:flutter/material.dart';
import 'package:login_project/utils/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouts.HomepageRout);
              },
              child: Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
