import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Welcome Home"),
              RaisedButton(
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                  child: Text("Go back"))
            ],
          ),
        ),
      ),
    );
  }
}
