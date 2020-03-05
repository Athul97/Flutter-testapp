import 'package:flutter/material.dart';

class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
            Navigator.pop(context);
          },)
      ),
      body: Container(
        height: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}
