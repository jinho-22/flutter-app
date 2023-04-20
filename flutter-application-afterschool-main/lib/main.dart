import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'kongbob_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Kongbobitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 1000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 2000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 3000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 4000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 5000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 8000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 9000));
    items.add(Kongbobitem(title: '팝니다', addr: '우리집', price: 45000));

    return MaterialApp(
      home: scaffold(items: items),
    );
  }
}

class scaffold extends StatelessWidget {
  const scaffold({
    super.key,
    required this.items,
  });

  final List<Kongbobitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kongbob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(price: item.price),
                        ));
                  },
                  child: item)
          ],
        ),
      ),
    );
  }
}
