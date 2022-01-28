import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool onChanged = false;
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        onChanged = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      width: onChanged ? 50 : 140,
                      alignment: Alignment.center,
                      child: onChanged
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
