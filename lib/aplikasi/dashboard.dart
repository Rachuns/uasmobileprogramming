import 'package:flutter/material.dart';
import 'package:uas_rachmat_ashari/aplikasi/account.dart';
import 'package:uas_rachmat_ashari/aplikasi/homepage.dart';
import 'package:uas_rachmat_ashari/aplikasi/notificationpage.dart';

class DashboardScreen extends StatefulWidget{
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>{
  
  int selectedPage = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _getPages(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar(){
    return BottomNavigationBar(items : const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(
        icon: Icon(Icons.message), label: "Pesan" ),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
    ],
    currentIndex: selectedPage,
    onTap: (tappedPage){
      setState(() {
        selectedPage = tappedPage;
      });
    },
    );
  }

  _getPages(){
    switch(selectedPage){
      case 0 : 
        return HomePage();
      case 1:
        return NotificationPage();
      case 2:
        return AccountPage();
    }
  }
}