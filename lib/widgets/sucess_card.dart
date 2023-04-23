import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SucessCard extends StatelessWidget {
  const SucessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("My Popup"),
      content: Text("This is some content for my popup."),
      actions: [
        ElevatedButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text("OK"),
          onPressed: () {
            // do something when the user clicks the OK button
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
