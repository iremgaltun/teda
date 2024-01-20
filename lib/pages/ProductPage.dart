import 'package:flutter/material.dart';
import 'package:teda1/pages/ItemPage.dart';

class ProductPage extends StatelessWidget {
  final List<String> products = ['ürün1', 'ürün 2', 'ürün 3', 'ürün 4', 'ürün 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF475269),
        shadowColor: Color(0XFF475269).withOpacity(0.8),
        title: Text(
          'Tedariklerim',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to your item page here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(),
                  ),
                );
              },
              child: buildProductContainer(products[index], index),
            );
          },
        ),
      ),
    );
  }

  Widget buildProductContainer(String text, int index) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFF5F9FD),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF475269).withOpacity(0.8),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Color(0xFF475269),
                  fontSize: 24.0,
                ),
              ),
              SizedBox(width: 8.0),
              ProductImage(i: index + 1),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Icon(
              Icons.delete,
              color: Color(0xFF475269).withOpacity(0.8),
              size: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int i;

  ProductImage({required this.i});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset(
        "assets/images/$i.png",
        width: 80.0,
        height: 50.0,
      ),
    );
  }
}
