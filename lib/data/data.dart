import 'package:langlod/models/cartype.dart';
import 'package:langlod/models/order.dart';
import 'package:langlod/models/shops.dart';
import 'package:langlod/models/user.dart';

// Car
final _minisedan = CarType(
    imageUrl: 'assets/image/minisedan.png', name: 'ລົດເກັງນ້ອຍ', price: 30000);
// CarType(
//     imageUrl: 'assets/image/minisedan.png',
//     name: 'minisedan',
//     price: 30000);
final _sedan =
    CarType(imageUrl: 'assets/image/sedan.jpeg', name: 'ລົດເກັງ', price: 35000);
// CarType(imageUrl: 'assets/image/sedan.jpeg', name: 'sedan', price: 35000);
final _pickup =
    CarType(imageUrl: 'assets/image/pickup.png', name: 'ລົດກະບະ', price: 40000);
// CarType(imageUrl: 'assets/image/pickup.png', name: 'pickup', price: 40000);
final _suv =
    CarType(imageUrl: 'assets/image/suv.png', name: 'ລົດຈິບ', price: 50000);
// CarType(imageUrl: 'assets/image/suv.png', name: 'suv', price: 50000);
final _van =
    CarType(imageUrl: 'assets/image/van.png', name: 'ລົດຕູ້', price: 60000);
// CarType(imageUrl: 'assets/image/van.png', name: 'van', price: 60000);
final _supercar = CarType(
    imageUrl: 'assets/image/supercar.png', name: 'ລົດຫລູ', price: 80000);
// imageUrl: 'assets/image/supercar.png',
// name: 'supercar',
// price: 80000);
final _moto =
    CarType(imageUrl: 'assets/image/moto.png', name: 'ລົດຈັກ', price: 20000);
// CarType(imageUrl: 'assets/image/moto.png', name: 'moto', price: 20000);

// Shops
final _shop1 = Shops(
  imageUrl: 'assets/image/001_sh.jpeg',
  name: 'FIT auto',
  address: 'ບ້ານໂນນສະຫວ່າງ, ເມືອງໄຊເສດຖາ',
  rating: 5,
  //menu: 'test',
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop2 = Shops(
  imageUrl: 'assets/image/002_sh.jpeg',
  name: 'Auto care',
  address: 'ບ້ານໜອງໄຮ, ເມືອງຫາດຊາຍຟອງ',
  rating: 4,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop3 = Shops(
  imageUrl: 'assets/image/003_sh.jpeg',
  name: 'Car cleaning',
  address: 'ບ້ານທາດຂາວ, ເມືອງໄຊເສດຖາ',
  rating: 5,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop4 = Shops(
  imageUrl: 'assets/image/004_sh.jpeg',
  name: 'CR shops',
  address: 'ບ້ານສວນມອນ, ເມືອງໄຊເສດຖາ',
  rating: 3,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop5 = Shops(
  imageUrl: 'assets/image/005_sh.jpeg',
  name: 'Mobi care',
  address: 'ບ້ານແສງສະຫວ່າງ, ເມືອງໄຊເສດຖາ',
  rating: 2,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop6 = Shops(
  imageUrl: 'assets/image/006_sh.jpeg',
  name: 'Mobi care',
  address: 'ບ້ານແສງສະຫວ່າງ, ເມືອງໄຊເສດຖາ',
  rating: 2,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop7 = Shops(
  imageUrl: 'assets/image/007_sh.jpeg',
  name: 'Mobi care',
  address: 'ບ້ານແສງສະຫວ່າງ, ເມືອງໄຊເສດຖາ',
  rating: 2,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final _shop8 = Shops(
  imageUrl: 'assets/image/008_sh.jpeg',
  name: 'Mobi care',
  address: 'ບ້ານແສງສະຫວ່າງ, ເມືອງໄຊເສດຖາ',
  rating: 2,
  menu: [_minisedan, _sedan, _pickup, _suv, _van, _supercar, _moto],
);
final List<Shops> shops = [
  _shop1,
  _shop2,
  _shop3,
  _shop4,
  _shop5,
  _shop6,
  _shop7,
  _shop8,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2021',
      cartype: _minisedan,
      shops: _shop2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2021',
      cartype: _sedan,
      shops: _shop1,
      quantity: 3,
    ),
    Order(
      date: 'Nov 10, 2021',
      cartype: _suv,
      shops: _shop1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 7, 2021',
      cartype: _van,
      shops: _shop2,
      quantity: 2,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 10, 2021',
      cartype: _supercar,
      shops: _shop3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2021',
      cartype: _pickup,
      shops: _shop4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 10, 2021',
      cartype: _moto,
      shops: _shop5,
      quantity: 2,
    ),
    Order(
      date: 'Nov 7, 2021',
      cartype: _suv,
      shops: _shop1,
      quantity: 2,
    ),
  ],
);
