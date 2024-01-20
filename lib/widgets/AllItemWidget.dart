import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return GridView.count(
    crossAxisCount: 2,
    childAspectRatio: 0.68,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      for(int i=4;i<12;i++)
      Container(
        padding: EdgeInsets.only(left:15,right:15,top:10),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFF5F9FD),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color:Color(0xFF475269),
            blurRadius: 5,
            spreadRadius: 1,

            ),
            ],
        ),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "ItemPage");
              },
              child:Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/$i.png",
                height: 130,
                width: 130,),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 8),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("tedarik",
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF475269),
              ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "daha fazla detay",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF475269).withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:EdgeInsets.all(5) ,
                    decoration: BoxDecoration(
                      color: Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),

                     ),
                     child: Icon(
                      CupertinoIcons.bookmark,
                      color: Colors.white,
                      size: 28,
                     ),
                  )
                ],
              ),
            )

        ]
        ),
      )
    ],





    );

  }
}