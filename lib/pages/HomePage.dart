import 'package:flutter/material.dart';
import 'package:teda1/pages/NotificationPage.dart';
import 'package:teda1/widgets/AllItemWidget.dart';
import 'package:teda1/widgets/HomeBottomNavBar.dart';
import 'package:teda1/widgets/RowItemWidget.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF475269),
        shadowColor: const Color(0xFF475269).withOpacity(0.8),
        title: const Text(
          "Ana Sayfa",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        actions: <Widget>[
    IconButton(

      icon: const Icon(
        Icons.notifications_none_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
         context,
        MaterialPageRoute(
        builder: (context) => const NotificationPage(),
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
              const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
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
                child: Row(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "search",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 27,
                      color: Color(0xFF475629),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
               RowItemWidget(),
              const AllItemWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  HomeBottomNavBar(),
    );
  }
}
