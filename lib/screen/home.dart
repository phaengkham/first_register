import 'package:flutter/material.dart';
import 'package:register_login_app/components/my_button.dart';
import 'package:register_login_app/components/my_text_field.dart';
import 'package:register_login_app/components/square_title.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _obsurve = true;

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'welcom back to learn flutter',
                style: TextStyle(color: Colors.grey[100], fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: _obsurve,
                subfixicon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsurve = !_obsurve;
                    });
                  },
                  child:
                      Icon(_obsurve ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTitle(imagePath: 'assets/images/google.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTitle(imagePath: 'assets/images/facebook.png'),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "not a number ?",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "register here",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
