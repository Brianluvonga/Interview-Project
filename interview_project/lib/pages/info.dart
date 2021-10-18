import 'package:flutter/material.dart';
import 'package:interview_project/pages/design.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 96, 32, 0),
          child: Column(
            children: <Widget>[
              _nameField(),
              const SizedBox(height: 10),
              _emailField(),
              const SizedBox(height: 10),
              _phoneField(),
              const SizedBox(height: 10),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xff2a0404),
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10),
                  minWidth: 200,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => DesignSection(
                          nameField: nameController.text,
                          emailField: emailController.text,
                          phoneField: phoneController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // showDialog(
  //                     context: context,
  //                     builder: (context) {
  //                       return AlertDialog(
  //                         content: Card(
  //                           elevation: 8.0,
  //                           shadowColor: Colors.black,
  //                           child: Container(
  //                               height: 120,
  //                               width: 120,
  //                               decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(15.0),
  //                               ),
  //                               child: Center(
  //                                 child: ListView(
  //                                   children: <Widget>[
  //                                     ListTile(
  //                                       title: Text(
  //                                         nameController.text,
  //                                         textAlign: TextAlign.center,
  //                                       ),
  //                                       subtitle: Text(
  //                                         emailController.text,
  //                                         textAlign: TextAlign.center,
  //                                       ),
  //                                       trailing: Text(
  //                                         phoneController.text,
  //                                         textAlign: TextAlign.center,
  //                                       ),
  //                                     ),
  //                                   ],
  //                                 ),
  //                               )),
  //                         ),
  //                       );

  // custom widgets for capturing user details

  Widget _nameField() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          suffixIcon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'name',
          labelStyle: const TextStyle(color: Colors.black)),
      keyboardType: TextInputType.name,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, fontFamily: 'times'),
      cursorColor: Colors.black,
      controller: nameController,
    );
  }

  Widget _emailField() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          suffixIcon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'email',
          labelStyle: const TextStyle(color: Colors.black)),
      keyboardType: TextInputType.name,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, fontFamily: 'times'),
      cursorColor: Colors.black,
      controller: emailController,
    );
  }

  Widget _phoneField() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          suffixIcon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          filled: true,
          hintText: 'phone no',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          labelText: 'phone no',
          labelStyle: const TextStyle(color: Colors.black)),
      keyboardType: TextInputType.name,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, fontFamily: 'times'),
      cursorColor: Colors.black,
      controller: phoneController,
    );
  }
}
