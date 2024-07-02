import 'package:brovider/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChelOuState extends StatefulWidget {
  const ChelOuState({super.key});

  @override
  State<ChelOuState> createState() => __ChelOuStateState();
}

class __ChelOuStateState extends State<ChelOuState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: false,
          title: const Text(
            'ChekOut',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Consumer<Cart>(
          builder: (context, Cart, child) {
            return ListView.builder(
                itemCount: Cart.baskititem.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text(Cart.baskititem[i].name),
                      trailing: IconButton(
                          onPressed: () {
                            Cart.remov(Cart.baskititem[i]);
                          },
                          icon: const Icon(Icons.remove)),
                    ),
                  );
                });
          },
        ));
  }
}
