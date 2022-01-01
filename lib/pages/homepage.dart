import 'package:flutter/material.dart';
import 'package:login_project/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool Changebutton = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is appbar"),
        centerTitle: true,
      ),
      body: Center(
        child: Material(
          borderRadius: BorderRadius.circular(Changebutton ? 50 : 8),
          color: Colors.deepPurple,
          child: InkWell(
            onTap: () async {
              setState(() {
                Changebutton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              await Navigator.pushNamed(context, MyRouts.LoginRout);
              setState(() {
                Changebutton = false;
              });
            },
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
      ),
    );
  }
}
