import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teda1/pages/LoginPage.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),

                 child: Image.asset("assets/images/login.png",
              ),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(

                children: [
                Icon(
                  Icons.person,
                  size: 27,
                  color: Color(0xFF475269).withOpacity(0.3),
                ),
                SizedBox(width: 15),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                     hintText: "Kullanıcı Adı"),
                  ),
                )
              ]
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),

              child: Row(children: [
                Icon(
                  Icons.lock,
                  size: 27,
                  color: Color(0xFF475269).withOpacity(0.3),
                ),
                SizedBox(height: 20),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Yeni Şifre"),
                  ),
                )
              ])
              ,
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                  ),
              child: Row(children: [
                Icon(
                  Icons.lock,
                  size: 27,
                  color: Color(0xFF475629).withOpacity(0.3),
                ),
                SizedBox(width: 15),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Yeni Şifre"),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF675269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Text(
                  "Güncelle",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }
}
