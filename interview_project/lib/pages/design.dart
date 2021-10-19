import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DesignSection extends StatelessWidget {
  String? nameField;
  String? emailField;
  String? phoneField;
  DesignSection(
      {Key? key, @required this.nameField, this.emailField, this.phoneField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Design'),
          centerTitle: true,
          backgroundColor: Colors.cyan[400],
        ),
        body: Center(
          child: Card(
            elevation: 8.0,
            shadowColor: Colors.black,
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                  child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Text(nameField.toString()),
                  Text(emailField.toString()),
                  Text(phoneField.toString()),
                ],
              )),
            ),
          ),
        ));
  }
}
