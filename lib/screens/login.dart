import 'dart:ui';
//import 'package:passwordfield/passwordfield.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  get children => null;

  get flase => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ແອບລ້າງລົດ'),
        ),
        body: Container(
          // child: ListView(
          //   children: <Widget>[
          //     Center(child: Image.asset('assets/image/langlod.png')
          //         //width: 300, height: 100),
          //         ),
          //     Card(
          //       margin: EdgeInsets.only(left: 10, right: 10),
          //       child: Column(
          //         children: <Widget>[
          //           Text("Bounpone"),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Text(
                  'ເຂົ້າສູ່ລະບົບ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60, left: 44, right: 30),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 318,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color(0XFFF46729),
                ),
              )
            ],
          ),
        ));
  }
}
