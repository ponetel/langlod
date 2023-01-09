import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ລົງທະບຽນເຂົ້າສູ່ລະບົບ"), elevation: 10.0),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }
}

Widget _buildContent() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
            child: Text('Sign in with Github'),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
              padding: MaterialStateProperty.all(EdgeInsets.all(30)),
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 20),
              ),
            ))
      ],
    ),
  );
}
