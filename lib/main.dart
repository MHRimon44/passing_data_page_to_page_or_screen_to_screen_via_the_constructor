// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'contact.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Passing Data',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Passing Data Page to Page or Screen to Screen via the Constructor')),
      body: Center(
          child: Container(
        child: ElevatedButton(
          child: Text('Go to contact page'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (cxt) => Contact("Hello")));
          },
        ),
      )),
    );
  }
}
