import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget{
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child:Container(
      height: 600,
      padding: const EdgeInsets.only(top:20),
      color: const Color(0xFFCEDDEE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal:10 ),
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
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
                                margin: const EdgeInsets.only(top: 10,right:60),
                                height: 90,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF475269),
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
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("tedo",
                              style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 23,
                                fontWeight: FontWeight.w500,

                              ),),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF5F9FD),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF475269).withOpacity(0.3),
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ],

                                      ),
                                      child: const Icon(
                                        Icons.heart_broken_rounded,
                                        size: 18,
                                        ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 10),

                                    ),

                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF5F9FD),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF475269).withOpacity(0.3),
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ],

                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                        ),
                                    ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:const [ BoxShadow(
                                  color: Color(0xFF475269),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                                ],

                              ),
                              child: const Icon(
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
