import 'package:flutter/material.dart';
import 'package:teda1/service/notificaiton_helper.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF475269),
        shadowColor: const Color(0XFF475269).withOpacity(0.8),
        title: const Text(
          'Bildirim Sayfası',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      body:  SingleChildScrollView(
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

  const NotificationBar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF475269).withOpacity(0.8),
            blurRadius: 5.0,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            color: const Color(0xFF475269).withOpacity(0.8),
            size: 30,
          ),
          const SizedBox(width: 8),
          Text(
            message,
            style: const TextStyle(
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
  const NotificationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            size: 100,
            color: const Color(0XFF475269).withOpacity(0.3),
          ),
          const SizedBox(height: 20),
          const Text(
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

