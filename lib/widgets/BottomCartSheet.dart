import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child:Container(
      height: 600,
      padding: EdgeInsets.only(top:20),
      color: Color(0xFFCEDDEE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal:10 ),
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[
                      BoxShadow(
                      color:Color (0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                      ),]
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "itemPage");
                          },
                          child:  Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10,right:60),
                                height: 90,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFF475269),
                                  borderRadius: BorderRadius.circular(10),

                                ),
                              ),
                              Image.asset("assets/images/1.png",
                              height: 130,
                              width: 130,
                              fit: BoxFit.contain,                          )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("tedo",
                              style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 23,
                                fontWeight: FontWeight.w500,

                              ),),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
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
                                      child: Icon(
                                        Icons.heart_broken_rounded,
                                        size: 18,
                                        ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                    ),

                                  Container(
                                    padding: EdgeInsets.all(5),
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
                                      child: Icon(
                                        Icons.add,
                                        size: 18,
                                        ),
                                    ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(padding: EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:[ BoxShadow(
                                  color: Color(0xFF475269),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                                ],

                              ),
                              child: Icon(
                                Icons.delete,
                                color: Color(0xFF475269),
                                size:20,

                              ) ,
                            )
                          ],
                        ),
                        )


                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    )
    );

  }
}
