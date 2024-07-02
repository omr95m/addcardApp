import 'package:brovider/addcard.dart';
import 'package:brovider/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
         return Cart();
        },
        child: const MaterialApp(debugShowCheckedModeBanner: false,
          home: Addcard(),
        ));
  }
}
