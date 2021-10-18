// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:interview_project/pages/design.dart';
import 'package:interview_project/pages/dictionary.dart';
import 'package:interview_project/pages/info.dart';
import 'package:interview_project/pages/response.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  late PageController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = PageController();
  }

  @override
  void dispose() {
    _navigationController.dispose();
    super.dispose();
  }

  final List<Widget> _navigationOptions = [
    const InformationScreen(),
    const ResponsePage(),
    DesignSection(
      nameField: '',
      emailField: '',
      phoneField: '',
    ),
    const DictionarySection()
  ];

  void _onSelectedItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      // _navigationController.animateToPage(index,
      //     duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('Info'), icon: Icon(Icons.info_outline)),
          BottomNavigationBarItem(
              title: Text('Response'), icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              title: Text('Design'), icon: Icon(Icons.network_cell_outlined)),
          BottomNavigationBarItem(
              title: Text('Dictionary'), icon: Icon(Icons.api)),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onSelectedItemTapped,
      ),
    );
  }
}
