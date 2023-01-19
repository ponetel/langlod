//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:langlod/models/cartype.dart';
import 'package:langlod/facility/checkboxlt.dart';

class OrderDetails extends StatefulWidget {
  //const OrderDetails({Key? key}) : super(key: key);
  final CarType carType;
  OrderDetails({required this.carType});
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  //_buildMenuItem(CarType menuItem){
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ລາຍລະອຽດ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.carType.imageUrl,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image(
                      height: 190.0,
                      //width: 400,
                      width: MediaQuery.of(context).size.width,
                      image: AssetImage(widget.carType.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            //ລາບການ
            Column(children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(children: [
                  //MainAxisAlignment: MainAxisAlignment.start
                  Text(
                    'ຄ່າລ້າງລົດ : '
                    '\LAK${widget.carType.price}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              Column(children: [
                // ignore: prefer_const_constructors
                Row(children: [
                  checkBoxLT(),
                  Text('ລ້າງຈັກ ແລະ ນ້ຳຢາກັນໜູ',
                      style: TextStyle(color: Colors.black, fontSize: 14.0))
                ]),
                Row(children: [
                  checkBoxLT(),
                  Text('ລ້າງແອ',
                      style: TextStyle(color: Colors.black, fontSize: 14.0))
                ]),
                Row(children: [
                  checkBoxLT(),
                  Text('ລ້າງແອອົບໂອໂຊນ',
                      style: TextStyle(color: Colors.black, fontSize: 14.0))
                ]),
                Row(children: [
                  checkBoxLT(),
                  Text(
                    'ຕ້ອງການໃຊ້ບໍລິການຮັບລົດເຖິງທີ່. ',
                    //'\LAK${widget.carType.price}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                    //fontWeight: FontWeight.bold),
                  ),
                ]),
              ]),
            ]),
            SizedBox(
              height: 40.0,
            ), // Column(
            //   //mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Padding(padding: EdgeInsets.all(2.0)),
            //     Row(children: [Text('ລ້າງຈັກ ແລະ ນ້ຳຢາກັນໜູ')]),
            //     Row(children: [Text('ລ້າງແອ')]),
            //     Row(children: [Text('ລ້າງແອອົບໂອໂຊນ')]),
            //   ],
            // )

            // ປຸ່ມກົດ confirm and Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                ElevatedButton(
                  //style: style,
                  onPressed: () {},
                  child: const Text('ຍົກເລີກ'),
                ),
                ElevatedButton(
                  //style: style,
                  onPressed: () {},
                  child: const Text('ຢືນຢັນ'),
                ),
              ],
            )
          ],
        ));
  }
}
