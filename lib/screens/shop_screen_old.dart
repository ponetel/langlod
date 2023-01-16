import 'package:flutter/material.dart';
import 'package:langlod/data/data.dart';
import 'package:langlod/models/cartype.dart';
import 'package:langlod/models/rating_stars.dart';
import 'package:langlod/models/shops.dart';
import 'package:langlod/screens/order_details.dart';
//import 'package:langlod/screens/order_details.dart';
import 'cart_screen.dart';
//import 'order_details.dart';

class ShopScreen extends StatefulWidget {
  //const ShopScreen({Key? key}) : super(key: key);
  final Shops shops;
  ShopScreen({required this.shops});
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  _buildMenuItem(CarType menuItem) {
    return Center(
      child: Stack(
        //alignment: Alignment.bottomLeft,
        // GestureDetector(
        //   onTap: () => Navigator.push(context,
        //       MaterialPageRoute(builder: (_) => ShopScreen(OrderDetails: ))),
        alignment: const Alignment(-0.5, 1.0),
        children: [
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),

                //fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 0.1,
              ),
            ),
          ),
          // Container(
          //   height: 175.0,
          //   width: 175.0,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15.0),
          //     gradient: LinearGradient(
          //       begin: Alignment.topRight,
          //       end: Alignment.bottomLeft,
          //       colors: [
          //         Colors.black.withOpacity(0.3),
          //         Colors.black87.withOpacity(0.3),
          //         Colors.black54.withOpacity(0.3),
          //         Colors.black38.withOpacity(0.3),
          //       ],
          //       stops: [0.1, 0.4, 0.6, 0.9],
          //     ),
          //   ),
          // )
          //ລາຄາ ໃນແຕ່ລະລາຍການ
          //Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
          Positioned(
            bottom: 10.0,
            child: Column(children: [
              Text(
                menuItem.name,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\LAK${menuItem.price}',
                style: TextStyle(color: Colors.red),
              )
            ]),
          ),
          // ປຸ່ມ add ໃນເມນູ
          Positioned(
              bottom: 10.0,
              right: 1.0,
              child: Container(
                margin: EdgeInsets.only(right: 20.0),
                //width: 48.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0)),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => OrderDetails(
                        carType: menuItem,
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.shops.imageUrl,
                child: Image(
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.shops.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Theme.of(context).primaryColor,
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    // TextButton(
                    //   child: Text(
                    //     'ກະຕ່າ(${currentUser.cart.length})',
                    //     style: TextStyle(fontSize: 20.0, color: Colors.red),
                    //   ),
                    //   onPressed: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (_) => CartScreen(),
                    //     ),
                    //   ),
                    // )

                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      iconSize: 35.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),

          //ໃສ່ຊືຮ້ານ
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.shops.name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),

                    // ໃສ່ໄລຍະທາງ
                    Text(
                      '0.2 km',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 1.0,
                // ),
                //ຈັດ rating ຮ້ານ
                RatingStars(widget.shops.rating),
                Text(
                  widget.shops.address,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
          //   child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         TextButton(
          //           child: Text(
          //             'ກວດຄືນ',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //           style: TextButton.styleFrom(
          //               backgroundColor: Colors.red,
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(30.0))),
          //           onPressed: () {},
          //         ),
          //         TextButton(
          //           child: Text(
          //             'ຕິດຕໍ່',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //           style: TextButton.styleFrom(
          //               backgroundColor: Colors.red,
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(30.0))),
          //           onPressed: () {},
          //         )
          //       ]),
          // ),
          // SizedBox(
          //   height: 2.0,
          // ),
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
                    child: Text(
                      'ກະຕ່າ(${currentUser.cart.length})',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CartScreen(),
                          ),
                        )),
                //child: Text('Cart'),

                // style: TextStyle(color: Colors.white, fontSize: 20.0),
                // link ໄປຫາໜ້າອື່ນ
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.shops.menu.length, (index) {
                CarType cartype = widget.shops.menu[index];
                return _buildMenuItem(cartype);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
