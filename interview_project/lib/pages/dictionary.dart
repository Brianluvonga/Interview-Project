import 'package:flutter/material.dart';

class DictionarySection extends StatefulWidget {
  const DictionarySection({Key? key}) : super(key: key);

  @override
  _DictionarySectionState createState() => _DictionarySectionState();
}

class _DictionarySectionState extends State<DictionarySection> {
  var dictionary = {
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

  // sorting method

  // sortDictionary() {
  //   var mapDictionaryElements = dictionary.entries.toList()
  //     ..sort((x, y) => int.parse(x.key).compareTo(int.parse(y.key)));
  //   dictionary
  //     ..clear()
  //     ..addEntries(mapDictionaryElements);

  //   // ignore: avoid_print
  //   return ListView(
  //       prototypeItem: ListTile(
  //     title: Text(dictionary as String),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dictionary Data'),
          centerTitle: true,
          backgroundColor: Colors.cyan[400],
        ),
        body: ListView.builder(
          itemCount: dictionary.length,
          itemBuilder: (BuildContext context, int index) {
            var mapDictionaryElements = dictionary.entries.toList()
              ..sort((x, y) => int.parse(x.key).compareTo(int.parse(y.key)));
            dictionary
              ..clear()
              ..addEntries(mapDictionaryElements);
            String yes = dictionary.keys.elementAt(index);
            String no = dictionary.values.elementAt(index);
            return Center(
                child: Column(children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.red, width: 0.5),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                title: Text(yes),
                subtitle: Text(no),
              )
            ]));
          },
        ));
  }
}
