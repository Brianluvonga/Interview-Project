import 'package:flutter/material.dart';
import 'package:interview_project/pages/design.dart';
import 'package:page_transition/page_transition.dart';

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
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 96, 32, 0),
          child: SizedBox(
            height: 350,
            width: 500,
            child: Card(
              color: Colors.black,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 40),
                  _nameField(),
                  const SizedBox(height: 10),
                  _emailField(),
                  const SizedBox(height: 10),
                  _phoneField(),
                  const SizedBox(height: 30),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10),
                      minWidth: 200,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: const Duration(seconds: 2),
                            backgroundColor: Colors.red[600],
                            content: const Text("Navigating to Design Page",
                                style: TextStyle()),
                          ),
                        );
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: DesignSection(
                              nameField: nameController.text,
                              emailField: emailController.text,
                              phoneField: phoneController.text,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // custom widgets for capturing user details

  Widget _nameField() {
    return SizedBox(
        width: 300,
        child: TextFormField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              suffixIcon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              filled: true,
              hintText: 'name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              labelText: 'name',
              labelStyle: const TextStyle(color: Colors.white)),
          keyboardType: TextInputType.name,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'times'),
          cursorColor: Colors.white,
          controller: nameController,
        ));
  }

  Widget _emailField() {
    return SizedBox(
        width: 300,
        child: TextFormField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              suffixIcon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              filled: true,
              hintText: 'email',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              labelText: 'email',
              labelStyle: const TextStyle(color: Colors.white)),
          keyboardType: TextInputType.name,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'times'),
          cursorColor: Colors.white,
          controller: emailController,
        ));
  }

  Widget _phoneField() {
    return SizedBox(
        width: 300,
        child: TextFormField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 1, color: Colors.greenAccent),
              ),
              suffixIcon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              filled: true,
              hintText: 'phone no',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              labelText: 'phone no',
              labelStyle: const TextStyle(color: Colors.white)),
          keyboardType: TextInputType.name,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'times'),
          cursorColor: Colors.white,
          controller: phoneController,
        ));
  }
}
