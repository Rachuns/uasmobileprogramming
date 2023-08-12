import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget{
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar(){
    return BottomNavigationBar(items : const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(
        icon: Icon(Icons.message), label: "Pesan" ),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
    ]);
  }
}