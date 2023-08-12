import 'package:flutter/material.dart';
import 'package:uas_rachmat_ashari/aplikasi/dashboard.dart';
import 'package:uas_rachmat_ashari/aplikasi/register.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputfield(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context){
    return const Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text("Rachmat Mobile",
        style: TextStyle(
          fontSize: 30,
          fontWeight : FontWeight.bold
        ) ,
        ),
        Text("Silahkan Login Terlebih Dahulu"),
        SizedBox(height: 10),
      ],
    );
  }

  _inputfield(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration : InputDecoration(
            hintText: "Username",
            border : OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon:const Icon(Icons.person) 
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration : InputDecoration(
            hintText: "Password",
            border : OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon:const Icon(Icons.person) 
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed:() {Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return DashboardScreen();
          }));},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16)
          ), 
          child: const Text("Login",style: TextStyle(fontSize: 20),),
          ),
          const SizedBox(height: 10),
      ],
    );
  }

  _forgotPassword(context){
    return TextButton(onPressed: () {}, child: const Text("Forgot Password"));
  }

  _signup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Tidak mempunyai akun ? "),
        TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return RegisterPage();
        }));}, child: const Text("Register Disini"))
      ],
      );
  }
}