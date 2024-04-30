import 'package:flutter/material.dart';
import 'package:simpleinterest/common_widget/list_tile_widget.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST TILE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 1000; i++) ...{
              if (i % 2 == 0) ...{
                ListTileWidget(index: i, imageName: 'image_1.jpg'),
              } else ...{
                ListTileWidget(index: i, imageName: 'image_2.png'),
              }
            },
          ],
        ),
      ),
    );
  }
}
