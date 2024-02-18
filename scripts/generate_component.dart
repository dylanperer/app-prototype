import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a name as an argument.');
    return;
  }

  final componentName = arguments[0];
  final componentDirectory = Directory('../lib/components/$componentName');

  if (componentDirectory.existsSync()) {
    print('Directory already exists.');
    return;
  }

  try {
    componentDirectory.createSync(recursive: true);

    final componentFile = File('${componentDirectory.path}/${componentName}_component.dart');
    final viewFile = File('${componentDirectory.path}/${componentName}_view.dart');

    final foo = componentName.split('-');


    componentFile.writeAsStringSync(componentFileContent(firstCharacterToUpper(componentName)));
    viewFile.writeAsStringSync(viewFileContent(componentName));

    print('Component files created successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

String componentFileContent(String name) {
  return '''
import 'package:flutter/material.dart';

class ${firstCharacterToUpper(name)}Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Your ${name} component UI here
    );
  }
}
''';
}

String viewFileContent(String name) {
  return '''
import 'package:flutter/material.dart'; 
import 'package:app/components/$name/${name}_component.dart';

Widget view(${firstCharacterToUpper(name)}Component component, BuildContext context) {
  return Placeholder();
}
''';
}


String firstCharacterToUpper(String input) {
  // Split the input string by '-'
  List<String> words = input.split('-');

  // Capitalize the first letter of each word
  List<String> capitalizedWords = words.map((word) {
    if (word.isEmpty) return word;
    return word.substring(0, 1).toUpperCase() + word.substring(1);
  }).toList();

  // Join the capitalized words
  String result = capitalizedWords.join('');

  return result;
}

String toCamelCase(String input) {
  // Split the input string by non-alphanumeric characters
  List<String> words = input.split(RegExp(r'[^a-zA-Z0-9]'));

  // Capitalize the first letter of the first word and make the rest of the words capitalized
  String result = words[0].toLowerCase();
  for (int i = 1; i < words.length; i++) {
    result += words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
  }

  return result;
}