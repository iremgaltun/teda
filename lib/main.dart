import 'package:flutter/material.dart';
import 'package:teda1/pages/AddNewProduct.dart';
import 'package:teda1/pages/ApplyPage.dart';
import 'package:teda1/pages/HomePage.dart';
import 'package:teda1/pages/LoginPage.dart';
import 'package:teda1/pages/ProductPage.dart';
import 'package:teda1/pages/ProfilePage.dart';
import 'package:teda1/pages/ForgetPassword.dart';
import 'package:teda1/pages/ItemPage.dart';
import 'package:teda1/pages/kayitPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teda1/pages/notificationPage.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp()); }

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
          "notificationPage":(context)=> NotificationPage(),
          "applyPage":(context) => ApplyPage(),
          "forgetpasword":(context) => ForgetPassword(),
          "productPage":(context) => ProductPage(),
        }
    );
  }
  }


