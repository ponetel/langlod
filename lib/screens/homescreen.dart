import 'package:flutter/material.dart';
import 'package:langlod/widgets/recent_orders.dart';
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
        Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color: Theme.of(context).primaryColor,
                    )),
                hintText: 'ຄົ້ນຫາຮ້ານລ້າງລົດ',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                )),
          ),
        ),
        RecentOrders(),
      ]),
    );
  }
}
