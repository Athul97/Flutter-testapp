import 'package:flutter/material.dart';


class Buttoncolor extends StatefulWidget {
  @override
  _ButtoncolorState createState() => _ButtoncolorState();
}

class _ButtoncolorState extends State<Buttoncolor> {
  Color _iconColor1 = Colors.grey;
  Color _iconColor2 = Colors.grey;
  Color _iconColor3 = Colors.grey;
  Color _iconColor4 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    bool pressed = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Case1'),
        backgroundColor: Colors.black26,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: 200,
                    child: FlatButton(
                      color: _iconColor1,
                      textColor: Colors.white,

                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        /*...*/
                        setState((){
                          _iconColor1 = Colors.red;

                        });
                      },
                      child: Text(
                        "Red",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: 200,
                    child: FlatButton(
                      color: _iconColor2,
                      textColor: Colors.white,

                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        /*...*/
                        setState((){
                          _iconColor2 = Colors.green;

                        });
                      },
                      child: Text(
                        "Green",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: 200,
                    child: FlatButton(
//              color: Colors.grey,
                    color: _iconColor3,
                      textColor: Colors.white,

                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        setState((){
                          _iconColor3 = Colors.blue;

                        });
                      },
                      child: Text(
                        "Blue",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: FlatButton(
                      color: _iconColor4,
//              color: pressed ? Colors.grey : Colors.yellow,
                      textColor: Colors.white,

                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        setState((){
//                  pressed = !pressed;
                          _iconColor4 = Colors.yellow;

                        });
                      },
                      child: Text(
                        "Yellow",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
