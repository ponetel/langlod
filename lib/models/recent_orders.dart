import 'package:flutter/material.dart';
import 'package:langlod/data/data.dart';
import 'package:langlod/models/order.dart';
import 'package:langlod/screens/order_details.dart';
//import 'package:langlod/models/cartype.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({Key? key}) : super(key: key);
  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage(order.cartype.imageUrl),
                    //fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.cartype.name,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          order.shops.name,
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          order.date,
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20.0),
              width: 48.0,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30.0)),
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 30.0,
                color: Colors.white,
                //onPressed: () {},
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OrderDetails(
                      carType: order.cartype,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'ໃຊ້ບໍລິການຫລ້າສຸດ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Container(
              height: 120.0,
              //color: Colors.blue,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(), // for andriod
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: currentUser.orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    Order order = currentUser.orders[index];
                    return _buildRecentOrder(context, order);
                  }))
        ],
      );
}
