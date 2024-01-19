import 'package:flutter/material.dart';
import 'package:teda1/pages/notificationPage.dart';
import 'package:teda1/widgets/AllItemWidget.dart';
import 'package:teda1/widgets/HomeBottomNavBar.dart';
import 'package:teda1/widgets/RowItemWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF475269),
        shadowColor: Color(0xFF475269).withOpacity(0.8),
        title: Text(
          "Ana Sayfa",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        actions: <Widget>[
    IconButton(

      icon: Icon(
        Icons.notifications_none_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
         context,
        MaterialPageRoute(
        builder: (context) => NotificationPage(),
          ),
          );
      },
    )
  ],

      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
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
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "search",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 27,
                      color: Color(0xFF475629),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              RowItemWidget(),
              AllItemWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}

