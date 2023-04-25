import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  int price;
  DetailPage({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('detail')),
      body: Column(
        children: [
          Hero(tag: 'image', child: Image.asset('images/usb.jpg')),
          Text('$price'),
        ],
      ),
    );
  }
}
