import 'package:flutter/material.dart';
import 'package:simpleinterest/common_widget/my_button.dart';
import 'package:simpleinterest/common_widget/my_textformfield.dart';

class StudentDetailScreen extends StatefulWidget {
  const StudentDetailScreen({super.key});

  @override
  State<StudentDetailScreen> createState() => _StudentDetailScreenState();
}

class _StudentDetailScreenState extends State<StudentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student Details'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              MyTextFormField(onChanged: (value) {}, text: 'Enter First Name'),
              const SizedBox(
                height: 8,
              ),
              MyTextFormField(onChanged: (value) {}, text: 'Enter Last Name'),
              const SizedBox(
                height: 8,
              ),
              MyTextFormField(onChanged: (value) {}, text: 'Enter Address'),
              const SizedBox(
                height: 8,
              ),
              MyButton(onPressed: () {}, text: 'Save'),
              const SizedBox(
                height: 8,
              ),
              const Column(children: [
                Text('Student Details'),
              ])
            ],
          ),
        ));
  }
}
