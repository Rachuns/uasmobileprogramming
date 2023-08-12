import 'package:flutter/material.dart';
import 'package:uas_rachmat_ashari/aplikasi/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      title: 'Rachmat Ashari Mobile',
    );
  }
}
