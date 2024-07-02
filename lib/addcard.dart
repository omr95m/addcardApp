import 'package:brovider/chekout.dart';
import 'package:brovider/itemClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'card.dart';

class Addcard extends StatefulWidget {
  const Addcard({super.key});

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  List<Item> items = [
    Item(name: 'iphone 14 pro max', price: 900),
    Item(name: 'Galaxy S24', price: 700.00),
    Item(name: 'huawei', price: 600)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ChelOuState();
                    }));
                  },
                  icon: const Icon(Icons.add_shopping_cart)),
              Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Consumer<Cart>(builder: (context, card, child) {
                    return Text('${card.totalprice}');
                  }))
            ],
          )
        ],
        title: const Text(
          'Home ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(child: Consumer<Cart>(
              builder: (context, value, child) {
                return ListTile(
                  title: Text(items[i].name),
                  trailing: IconButton(
                      onPressed: () {
                        value.add(items[i]);
                      },
                      icon: const Icon(Icons.add)),
                );
              },
            ));
          }),
    );
  }
}
