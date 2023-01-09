import 'package:flutter/material.dart';
import 'package:langlod/data/data.dart';
//import 'package:langlod/models/cartype.dart';
//import 'package:langlod/models/order.dart';
import 'package:langlod/models/shops.dart';
//import 'package:langlod/models/user.dart';
import 'package:langlod/models/recent_orders.dart';
import 'package:langlod/models/rating_stars.dart';
import 'package:langlod/screens/login.dart';
import 'package:langlod/screens/shop_screen.dart';

import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestautrants() {
    List<Widget> shopList = [];
    shops.forEach((Shops shops) {
      shopList.add(
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => ShopScreen(shops: shops))),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              //boxShadow: const BoxShadow(color: Colors.black,blurRadius: 20.0,),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 0.0,
                                //color: Colors.grey[200],
              ),
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Hero(
                    tag: shops.imageUrl,
                    child: Image(
                      height: 150.0,
                      width: 150.0,
                      image: AssetImage(shops.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shops.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      RatingStars(shops.rating),
                      Text(
                        shops.address,
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '0.2 km',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
    return Column(children: shopList);
  }

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          // onPressed: () {},
          onPressed: () => const LogIn(),
        ),

        title: Text(
          'ແອບລ້າງລົດ',
        ),

        //ປຸ່ມລວມລາຍການ order
        actions: [
          TextButton(
              child: Text(
                'ກະຕ່າ(${currentUser.cart.length})',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              //child: Text('Cart'),

              // style: TextStyle(color: Colors.white, fontSize: 20.0),
              // link ໄປຫາໜ້າອື່ນ
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    ),
                  ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                          width: 0.8, color: Theme.of(context).primaryColor)),
                  hintText: 'ຊອກຫາຮ້ານ',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                    //color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  )),
            ),
          ),
          RecentOrder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'ຮ້ານທີ່ຢູ່ໃກ້ທ່ານ',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestautrants(),
            ],
          )
        ],
      ),
    );
  }
}
