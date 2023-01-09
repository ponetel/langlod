import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/data.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'ໃຊ້ບໍລິການຫລ້າສຸດ',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          ),
        ),
        // Container(
        //   height: 120.0,
        //   color: Colors.blue,
        //   child: ListView.builder(itemCount: currentUser.orders.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       Order order = currentUser.orders[index];
        //       return Text(orders.);},),),
        // )
      ],
    );
  }
}
