import 'package:flutter/material.dart';
import 'package:login_project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool Changebutton = false;

  final _fromkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_fromkey.currentState!.validate()) {
      setState(() {
        Changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.WelcomeRout);
      setState(() {
        Changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          child: Form(
            key: _fromkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/login.jpg"),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "User Name",
                    labelText: "user name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User name can't be Empty";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Password",
                    labelText: "password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can't be Empty";
                    } else if (value.length < 6) {
                      return "Password lenth should be atlest 6";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  borderRadius: BorderRadius.circular(Changebutton ? 50 : 8),
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 50,
                      width: Changebutton ? 50 : 150,
                      child: Changebutton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
