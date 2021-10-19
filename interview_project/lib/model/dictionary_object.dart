sortDictionary() {
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

  var mapDictionaryElements = dictionary.entries.toList()
    ..sort((x, y) => int.parse(x.key).compareTo(int.parse(y.key)));
  dictionary
    ..clear()
    ..addEntries(mapDictionaryElements);
}
