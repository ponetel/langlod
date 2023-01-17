import 'package:flutter/material.dart';
import 'package:langlod/screens/cart_screen.dart';
import '../data/data.dart';
import '../models/rating_stars.dart';
import '../models/shops.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ShopScreen extends StatefulWidget {
  final Shops shops;
  ShopScreen({required this.shops});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Hero(
              tag: widget.shops.imageUrl,
              child: Image(
                height: 230.0,
                width: MediaQuery.of(context).size.width,
                image: AssetImage(widget.shops.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    color: Theme.of(context).primaryColor,
                    iconSize: 35.0,
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.shops.name,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('0.2 Km',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              RatingStars(widget.shops.rating),
              // SizedBox(
              //   height: 6.0,
              // ),
              Text(
                widget.shops.address,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 15.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'ປະເພດລົດ',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              TextButton(
                  // onPressed: () {},
                  child: Text(
                    'ກະຕ່າ(${currentUser.cart.length})',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CartScreen(),
                        ),
                      )),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Text(
            'Menu',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ]),
    );
  }
}
