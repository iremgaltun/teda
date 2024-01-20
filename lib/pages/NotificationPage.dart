import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF475269),
        shadowColor: Color(0XFF475269).withOpacity(0.8),
        title: Text(
          'Bildirim Sayfası',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationBar(message: 'Paylaştığınız ürüne başvuru var'),
            SizedBox(height: 20),
            Center(
              child: NotificationContent(),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationBar extends StatelessWidget {
  final String message;

  const NotificationBar({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF475269).withOpacity(0.8),
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            color: Color(0xFF475269).withOpacity(0.8),
            size: 30,
          ),
          SizedBox(width: 8),
          Text(
            message,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            size: 100,
            color: Color(0XFF475269).withOpacity(0.3),
          ),
          SizedBox(height: 20),
          Text(
            'Bildirim!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF475269),
            ),
          ),
        ],
      ),
    );
  }
}