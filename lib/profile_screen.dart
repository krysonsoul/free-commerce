import 'package:flutter/material.dart';
import 'package:flutter_datetime_formfield/flutter_datetime_formfield.dart';

class Profile extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String name;
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Container(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 150.0,
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Your name",
                        hintText: "What do people call you?"),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return "Enter your name";
                      else
                        return null;
                    },
                    onSaved: (value) {
                      name = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mobile_friendly),
                      labelText: "Your contact number",
                    ),
                  ),
                  DateTimeFormField(
                    initialValue: DateTime.now(),
                    label: "DOB",
                    onlyDate: true,
                    // validator: (value) {
                    //   var year = value.year;
                    //   if (year > 2000) {
                    //     return "You are a kid";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onSaved: (value) {},
                  ),
                  RaisedButton(
                    onPressed: () {
                      /// validate the fields
                      var form = _formKey.currentState;
                      if (form.validate()) {
                        form.save();
                        print("entered data");
                        print("Name : $name");
                        print(
                            "Name (from controller) : ${_nameController.text}");

                        /// todo: save to database
                      }
                    },
                    child: Text("Save"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
