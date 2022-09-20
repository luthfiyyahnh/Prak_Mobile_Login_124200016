import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //ini adalah kelas yang dipanggil pada main.dart
  static String tag = 'home-page'; //pembuatan tag login page
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      //menampilkan logo
      tag: 'hero',
      child: CircleAvatar(
        //membuat frame foto menjadi bulat
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/upn.png'),
      ),
    );

    final email = TextFormField(
      //menampilkan form input
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      // menampilkan form password
      autofocus: false,
      initialValue: '',
      obscureText: true, // menyembunyikan tulisan pada kolom password
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      //menampilkan login button
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: ElevatedButton(
        onPressed: (){}, // Respon ketika button ditekan
        child: Text("Log In", style: TextStyle(color: Colors.white),),
      )
    );

    final forgotLabel = TextButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      // syntak untuk memanggil fungsi yang dibuat di atas
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
