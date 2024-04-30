import 'package:flutter/material.dart';
import 'package:simpleinterest/common_widget/my_button.dart';
import 'package:simpleinterest/common_widget/my_snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Expanded Screen'),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 600,
              color: Colors.red,
              child: Center(
                child: MyButton(
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //   backgroundColor: Colors.green,
                    //   content: Text('Button 1'),
                    //   duration: Duration(seconds: 1),
                    //   behavior: SnackBarBehavior.floating,
                    // ));
                    mySnackBar(message: 'Button 1', context: context);
                  },
                  text: 'Click here',
                ),
              ),
            ),
          ),
          Expanded(
            //  fit: FlexFit.tight,
            flex: 2,
            child: Container(
              width: double.infinity,
              // height: 50,
              color: Colors.amber,
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        // ScaffoldMessenger.of(context)
                        //     .showSnackBar(const SnackBar(
                        //   content: Text('Button 2'),
                        //   duration: Duration(seconds: 1),
                        // ));
                        mySnackBar(
                            message: 'Button 2',
                            context: context,
                            color: Colors.red);
                      },
                      text: 'Hello')),
            ),
          ),
        ],
      ),
    );
  }
}
