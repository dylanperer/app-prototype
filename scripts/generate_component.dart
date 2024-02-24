import 'dart:io';
import 'package:change_case/change_case.dart';

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


    componentFile.writeAsStringSync(componentFileContent(componentName));
    viewFile.writeAsStringSync(viewFileContent(componentName));

    print('Component files created successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

String componentFileContent(String name) {
  return '''
import 'package:flutter/material.dart';
part '${name.toLowerCase()}_view.dart';

class ${name.toPascalCase()}Component extends StatelessWidget {
  const ${name.toPascalCase()}Component({super.key});
  
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
