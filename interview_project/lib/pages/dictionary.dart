import 'package:flutter/material.dart';

class DictionarySection extends StatefulWidget {
  const DictionarySection({Key? key}) : super(key: key);

  @override
  _DictionarySectionState createState() => _DictionarySectionState();
}

class _DictionarySectionState extends State<DictionarySection> {
  Map<String, String> dictionary = {
    '34': 'thirty-four',
    '90': 'ninety',
    '91': 'ninety-one',
    '21': 'twenty-one',
    '61': 'sixty-one',
    '9': 'nine',
    '2': 'two',
    '6': 'six',
    '3': 'three',
    '8': 'eight',
    '80': 'eighty',
    '81': 'eighty-one',
    '99': 'Ninety-Nine',
    '900': 'nine-hundred'
  };

  sortDictionaryData() {
    var mapDictionaryElements = dictionary.entries.toList()
      ..sort((x, y) => x.value.compareTo(y.value));

    dictionary
      ..clear()
      ..addEntries(mapDictionaryElements);

    dictionary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Dictionary API Data'),
      centerTitle: true,
    ));
  }
}
