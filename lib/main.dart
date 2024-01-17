import 'package:flutter/material.dart';
import 'package:teda1/pages/AddNewProduct.dart';
import 'package:teda1/pages/HomePage.dart';
import 'package:teda1/pages/LoginPage.dart';
import 'package:teda1/pages/ProfilePage.dart';
import 'package:teda1/pages/itemPage.dart';
import 'package:teda1/pages/kayitPage.dart';


void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE)),
        routes:{
          "/":(context) => LoginPage(),
          "homePage":(context)=> HomePage(),
          "ItemPage":(context) => ItemPage(),
          "KayitPage":(context) => kayitPage(),
          "profilePage":(context)=> ProfilePage(),
          "addNewProduct":(context) => AddNewProduct(),

        }
    );
  }
  }


