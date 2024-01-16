import 'package:flutter/material.dart';


class RowItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i =1 ;i<4;i++)
          Container(
            margin: EdgeInsets.only(top:10,bottom:10,left:10),
            padding: EdgeInsets.symmetric(horizontal: 10),

             height: 180,
            decoration: BoxDecoration(
              color:Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]

            ),
            child: Row(
              children:
              [Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    //margin: EdgeInsets.only(top:30,right:20),
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),

                    Image.asset(
                  "assets/images/$i.png",
                   height: 120,
                   width: 100,
                  fit: BoxFit.contain,
                   ),


                ],

              ),
              Padding(padding:EdgeInsets.symmetric(vertical:30 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  "tedarik1",
                  style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ) ,
                ),
                SizedBox(height: 5,),
                Text(
                  "tedarik1 detaylari",
                  style: TextStyle(
                    color: Color(0xFF475269).withOpacity(0.8),
                    fontSize: 12
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    SizedBox(width: 200,),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.bookmark_add_rounded,
                        color: Colors.white,
                        size:20,

                      ),


                    )
                  ],
                )




                ]


                ,
              ),


              )
              ],
            ),
          )
        ],
      ),
    );
  }

}
