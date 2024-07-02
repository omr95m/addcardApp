import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Model();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: false,
          title: const Text('Provider'),
        ),
        body: Column(
          children: [
            Selector<Model, String>(
              selector: (context, model7) {
                return model7.change1;
              },
              builder: (context, value, child) {
           
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      value,
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
              Selector<Model, String>(
              selector: (context, model7) {
                return model7.change2;
              },
              builder: (context, value, child) {
                return Column(
                  children: [
                    Text(
                      value,
                      style: const TextStyle(fontSize: 25),
                    ),
                 
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                );
              },
            ),
            Consumer<Model>(
              builder: (context, value, child) {
                return MaterialButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    value.changeName1();
                  },
                  child: const Text('Do somthing'),
                );
              },
            ),
            // const SizedBox(
            //   height: 30,
         
            Consumer<Model>(
              builder: (context, value, child) {

                return MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    value.changename2();
                  },
                  child: const Text('Do somthing'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name1 = 'user 1';
  String name2 = 'Name 2';
  get change1 {
    return name1 ;
  }

  get change2 {
    return name2 ;
  }

  changeName1() {
    name1 = 'omar';
    notifyListeners();
  }

  changename2() {
    name2 = 'Mohamad';
    notifyListeners();
  }
}
