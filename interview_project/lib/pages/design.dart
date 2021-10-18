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
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                nameField!.toString(),
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              Center(
                  child: Text(
                emailField!.toString(),
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              Center(
                  child: Text(
                phoneField!.toString(),
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              // RaisedButton(
              //   onPressed: () => goBack(context),
              //   color: Colors.lightBlue,
              //   textColor: Colors.white,
              //   child: Text('Go Back To Previous Screen'),
              // )
            ]));
  }
}
