import 'package:flutter/material.dart';
import 'package:simpleinterest/screen/flexible_Expanded_screen.dart';
import 'package:simpleinterest/screen/student_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StudentDetailScreen());
  }
}
