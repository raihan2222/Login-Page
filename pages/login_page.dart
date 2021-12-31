import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(25),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/login.jpg"),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "User Name",
                labelText: "user name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Password",
                labelText: "password",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
