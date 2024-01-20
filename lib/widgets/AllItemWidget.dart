import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemWidget extends StatelessWidget{
  const AllItemWidget({super.key});

  @override
  Widget build (BuildContext context){
    return GridView.count(
    crossAxisCount: 2,
    childAspectRatio: 0.68,
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      for(int i=4;i<12;i++)
      Container(
        padding: const EdgeInsets.only(left:15,right:15,top:10),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F9FD),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(
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
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/images/$i.png",
                height: 130,
                width: 130,),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text("tedarik",
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
                  color: const Color(0xFF475269).withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:const EdgeInsets.all(5) ,
                    decoration: BoxDecoration(
                      color: const Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),

                     ),
                     child: const Icon(
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