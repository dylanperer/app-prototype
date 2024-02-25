import 'dart:io';
import 'package:change_case/change_case.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a name as an argument.');
    return;
  }

  final componentName = arguments[0];






  try {

    var x = Generate(componentName, arguments);

    Directory componentDirectory = Directory('../lib/${x.result.fileType}s/$componentName');

    if (componentDirectory.existsSync()) {
      print('Directory already exists.');
      return;
    }

    componentDirectory.createSync(recursive: true);

    final componentFile =
        File('${componentDirectory.path}/${componentName}_${x.result.fileType}.dart');
    final viewFile =
        File('${componentDirectory.path}/${componentName}_view.dart');

    componentFile.writeAsStringSync(x.result.type);
    viewFile.writeAsStringSync(x.result.view);

    print('Component files created successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

class Generate {
  final String name;
  final List<String> args;

  Generate(this.name, this.args);

  GenerateResult get result {
    String type = '';
    String view = '';
    String fileType = '';

    if (args.length == 2 && args[1] == '-s') {
      type = generateType(name.toPascalCase(), 'screen');
      view = generateView(name, 'screen');
      fileType =  'screen';
    } else {
      type = generateType(name.toPascalCase(), 'component');
      view = generateView(name, 'component');
      fileType =  'component';
    }

    return GenerateResult(type, view, fileType);
  }

  String generateType(String name, String type) {
    return '''
import 'package:flutter/material.dart';
part '${name.toParamCase()}_view.dart';

class $name${type.toPascalCase()} extends StatelessWidget {
  const $name${type.toPascalCase()}({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _${name.toCamelCase()}View(this, context);
  }
}
''';
  }

  String generateView(String name, String type) {
    return '''
part of '${name}_${type.toLowerCase()}.dart';

Widget _${name.replaceAll('_', '').toCamelCase()}View(${(name).replaceAll('_', '').toPascalCase()}${type.toPascalCase()} $type, BuildContext context) {
  return Placeholder();
}
''';
  }
}

class GenerateResult {
  final String type;
  final String view;
  final String fileType;

  GenerateResult(this.type, this.view, this.fileType);
}
