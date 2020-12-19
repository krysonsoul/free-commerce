import 'package:flutter/material.dart';
import 'package:free_commerce/home_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Image.asset('images/logo.png'),
              // Image.network("https://cdn.auradix.com/logo.png"),
              SizedBox(
                height: 30.0,
              ),

              ///2. username field
              TextFormField(),

              /// 3. password field
              TextFormField(
                obscureText: true,
              ),

              /// make some space
              SizedBox(
                height: 20.0,
              ),

              ///4. signin botton
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  print("username:");
                  print("password:");

                  /// navigation example
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              /// 5. text
              Text('Or', textAlign: TextAlign.center),

              ///4. Signup button
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.maybePop(context);
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                "Forgot password ? Reset",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
