import 'package:flutter/material.dart';

class AddNewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF475269),
        shadowColor: Color(0xFF475269).withOpacity(0.8),
        title: Text(
          "Tedarik Ekleme",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF5F9FD),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Ürün İsmi'),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(labelText: 'Sektör'),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(labelText: 'Açıklama'),
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Fiyat'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fotoğraf:'),
                  IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {
                      // Fotoğraf eklemek için yapılacak işlemler
                    },
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Bu butona tıklanınca yapılacak işlemler
                },
                child: Text('Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
