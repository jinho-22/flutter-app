import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Kongbobitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('kongbob market'),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [for (var item in items) item],
          ),
        ),
      ),
    );
  }
}

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
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  const DecorationImage(image: AssetImage('images/usb.jpg'))),
        ),
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
