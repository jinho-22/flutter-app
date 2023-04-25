import 'package:flutter/material.dart';

class Kongbobitem extends StatelessWidget {
  String title, addr;
  int price;

  Kongbobitem({
    required this.title,
    required this.addr,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(tag: 'image', child: Image.asset(width: 300, 'images/usb.jpg')),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Divider()로 가능
                const SizedBox(
                  height: 10,
                ),
                Text(
                  addr,
                  style: const TextStyle(
                      decoration: TextDecoration.underline, color: Colors.grey),
                ),
                Text('$price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.heart_broken), Text('0')],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
