// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  String message = '';
  Contact(String message) {
    message = message;
  }
//Contact(this.message);
//Contact({this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Column(
        children: [
          Text(message),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Get back'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
