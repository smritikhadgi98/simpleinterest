import 'package:flutter/material.dart';
import 'package:simpleinterest/screen/output_screen.dart';

class ListTileWidget extends StatelessWidget {
  final int index;
  String imageName;
  ListTileWidget({required this.index, required this.imageName, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 30,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/$imageName'),
        ),
      ),
      title: Text('Smriti Khadgi $index'),
      subtitle: const Text('Kathmandu,Nepal'),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return OutputScreen(
                id: index,
              );
            },
          ),
        );
      },
    );
  }
}
