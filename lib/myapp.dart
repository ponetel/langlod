import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:langlod/screens/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ແອບລ້າງລົດ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //ກຳນົດ ພາສາລາວ ເປັນ font ຫລັກ
          fontFamily: 'NotoSansLao',
          //primarySwatch: Colors.orange),
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 62.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'NotoSansLao'),
          ),
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          scaffoldBackgroundColor: Colors.grey[50],
          //primaryColor: Colors.red,
          primarySwatch: Colors.red),
      //ໜ້າ logo ເວລາເປິດແອບ
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/image/langlod.png'),
        splashIconSize: 300,
        //nextScreen: LogIn(),
        nextScreen: const HomeScreen(),
        //nextScreen: HomeScreen(),/
        //nextScreen: CuperButton(),
        splashTransition: SplashTransition.scaleTransition,
      ),
      //home: const HomeScreen(),
    );
  }
}
