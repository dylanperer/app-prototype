import 'dart:io';
import 'package:change_case/change_case.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a name as an argument.');
    return;
  }

  final componentName = arguments[0];
  bool isScreen = false;

  if (arguments[1] == '-s') {
    isScreen = true;
  }

  Directory componentDirectory = isScreen
      ? Directory('../lib/screens/$componentName')
      : Directory('../lib/components/$componentName');

  if (componentDirectory.existsSync()) {
    print('Directory already exists.');
    return;
  }

  try {
    componentDirectory.createSync(recursive: true);

    final componentFile =
        File('${componentDirectory.path}/${componentName}_component.dart');
    final viewFile =
        File('${componentDirectory.path}/${componentName}_view.dart');

    componentFile.writeAsStringSync(
        componentFileContent(componentName, isScreen ? 'screen' : 'component'));
    viewFile.writeAsStringSync(viewFileContent(componentName));

    print('Component files created successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

String componentFileContent(String name, String type) {
  return '''
import 'package:flutter/material.dart';
part '${name.toLowerCase()}_view.dart';

class ${name.toPascalCase()}${type.toPascalCase()} extends StatelessWidget {
  const ${name.toPascalCase()}${type.toPascalCase()}({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _${name.toCamelCase()}View(this, context);
  }
}
''';
}

String viewFileContent(String name) {
  return '''
part of '${name}_component.dart';

Widget _${name.replaceAll('_', '').toCamelCase()}View(${(name).replaceAll('_', '').toPascalCase()}Component component, BuildContext context) {
  return Placeholder();
}
''';
}
