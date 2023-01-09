import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:langlod/data/data.dart';
import 'package:langlod/models/order.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _buildCartItem(Order order) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 170.0,
                  decoration: BoxDecoration(
                    //ໃສ່ຮູບລາຍການ ໃນກະຕ່າ
                    image: DecorationImage(
                      image: AssetImage(order.cartype.imageUrl),
                      //fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                //ຊື່ລາຍການ ແລະ ຊື່ຮ້ານ
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.cartype.name,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        // SizedBox(
                        //   height: 2.0,
                        // ),
                        Text(
                          order.shops.name,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        //ປຸ່ມຈຳນວນ ເອົາໃສ່ກະຕ່າ
                        Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 0.8,
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  order.quantity.toString(),
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              '\LAK${order.quantity * order.cartype.price}',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = 0;
    currentUser.cart.forEach(
        (Order order) => totalPrice += order.quantity * order.cartype.price);
    return Scaffold(
      appBar: AppBar(
        title: Text('ກະຕ່າ(${currentUser.cart.length})'),
      ),
      body: ListView.separated(
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _buildCartItem(order);
          }
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ເວລາ ຄາດການໃນການສົ່ງມອບລົດຄືນ:',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '1h 30mn',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 2.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ລວມຍອດທັງໝົດ:',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\LAK${totalPrice.toString()}',
                      style: TextStyle(
                          color: Colors.green[400],
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 80.0,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -5),
              blurRadius: 6.0,
            )
          ],
        ),
        child: Center(
          // child: FlatButton(
          //   child: Text(
          //     'ຢືນຢັນການສຳລະ',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 30.0,
          //         fontWeight: FontWeight.w600,
          //         letterSpacing: 1.0),
          //   ),
          //   onPressed: () {},
          // ),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('ຢືນຢັນການສຳລະ'),
          ),
        ),
      ),
    );
  }
}
