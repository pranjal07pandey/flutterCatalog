import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome, $name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (username) {
                          if (username == null || username.isEmpty) {
                            return 'Please enter the username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter the password';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: () {
                          if(_formKey.currentState.validate()){
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      // RaisedButton(
                      //   onPressed: () {
                      //     print('button is pressed...');
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text('Login'),
                      //   color: Colors.purple[800],
                      //   textColor: Colors.white,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
