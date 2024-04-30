import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int id;
  const OutputScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Center(
        child: Text('Smriti Khadgi $id'),
      ),
    );
  }
}
