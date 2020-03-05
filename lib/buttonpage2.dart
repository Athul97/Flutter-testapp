import 'package:flutter/material.dart';
import 'package:test_app/red.dart';
import 'package:test_app/blue.dart.';

import 'package:test_app/green.dart';




class Buttonpage2 extends StatefulWidget {
  @override
  _Buttonpage2State createState() => _Buttonpage2State();
}

class _Buttonpage2State extends State<Buttonpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Case2'),
        backgroundColor: Colors.black26,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child:Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  PageRouteBuilder(
                                      transitionDuration: const Duration(milliseconds: 200),
                                      pageBuilder:(context, _, __) => Red()
                                  )
                              );
                            },
                            child: RaisedButton(
                              child: Text("Red", style: TextStyle(color: Colors.red, fontSize:20.0),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  PageRouteBuilder(
                                      transitionDuration: const Duration(milliseconds: 200),
                                      pageBuilder:(context, _, __) => Green()
                                  )
                              );
                            },
                            child: RaisedButton(
                              child: Text("Green", style: TextStyle(color: Colors.green, fontSize: 20.0),),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ])
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 200,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            PageRouteBuilder(
                                transitionDuration: const Duration(milliseconds: 200),
                                pageBuilder:(context, _, __) => Blue()
                            )
                        );
                      },
                      child: RaisedButton(
                        child: Text("Blue", style: TextStyle(color: Colors.blue, fontSize: 20.0),),
                      ),
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );

  }
}
