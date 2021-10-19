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
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Card(
            // color: Colors.amber,
            margin: const EdgeInsets.all(8.0),
            elevation: 8.0,
            shadowColor: Colors.greenAccent,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              height: 250,
              width: 300,
              child: Center(
                  child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  Text(nameField.toString()),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(emailField.toString()),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(phoneField.toString()),
                ],
              )),
            ),
          ),
        ));
  }
}
