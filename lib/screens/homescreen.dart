import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: const Text('ແອບລ້າງລົດ'),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              'Cart',
            ),
            style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 20.0, color: Colors.white)),
          )
        ],
      ),
      body: ListView(children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        )
      ]),
    );
  }
}
