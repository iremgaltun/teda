import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:teda1/widgets/AllItemWidget.dart';
import 'package:teda1/widgets/HomeBottomNavBar.dart';
import 'package:teda1/widgets/RowItemWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
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

                      child: badges.Badge(
                        badgeContent: Text(
                          "",
                          style: TextStyle(

                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.align_horizontal_left_rounded,
                          size: 30,
                          color: Color(0xFF475269),
                        ),


                      ),

                    ),


                    Container(
                      padding: EdgeInsets.all(8),
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

                      child: badges.Badge(
                        badgeContent: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Color(0xFF475629),
                        ),


                      ),
                    ),

                  ],

                ),

              ),


              SizedBox(height: 15),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color:Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Row(
                  children: [Container(
                    width: 300,
                    child: TextFormField( decoration:
                    InputDecoration(
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
