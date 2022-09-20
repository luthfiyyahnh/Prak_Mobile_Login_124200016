import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp()); //running my app

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    //membuat tampilan
    LoginPage.tag: (context) => LoginPage(), //navigasi login//navigasi home
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:
      LoginPage(), //tampilan yang akan muncul yaitu login pages yang diimpor dari login_page.dart
      routes: routes, //memanggil final routes seperti function
    );
  }
}