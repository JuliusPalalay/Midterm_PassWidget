
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class pagetwo extends StatelessWidget {
  String value;
  pagetwo({super.key, this.value = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 2')),
        body: Center(
          child: Text(
            value,
          ),
        ));
  }
}