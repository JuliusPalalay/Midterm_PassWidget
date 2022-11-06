// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pass Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                  child: TextField(
                    onChanged: (text) {
                    value = text;
                  },
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Hint Text',
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: ()
                {
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                  );
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => pagetwo(value: value)),
                  );
                },
                child: 
                Text("Submit"),
                ),
          ],
        ),
      ),
    );
  }
}