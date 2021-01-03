import 'package:flutter/material.dart';
import 'package:free_commerce/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            child: Container(
              ///todo: add user avatar

              color: Colors.green,
            ),
            height: 230.00,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            leading: Icon(
              Icons.person,
            ),
            title: Text("profile"),
            subtitle: Text("Go to your profile"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("profile"),
            subtitle: Text("Go to your profile"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("profile"),
            subtitle: Text("Go to your profile"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}
