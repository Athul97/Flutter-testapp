import 'package:flutter/material.dart';

class Green extends StatefulWidget {
  @override
  _GreenState createState() => _GreenState();
}

class _GreenState extends State<Green> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
            Navigator.pop(context);
          },)
      ),
      body: Container(
        height: double.infinity,
        color: Colors.green,
      ),
    );
  }
}

