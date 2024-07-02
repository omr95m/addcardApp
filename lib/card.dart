import 'package:brovider/itemClass.dart';
import 'package:flutter/material.dart';


class Cart with ChangeNotifier{
 
  // ignore: prefer_final_fields
  List <Item>_items=[];
  double _price=0.0;
  void add(Item item){
    _items.add(item);
    _price+=item.price;
    notifyListeners();
  }
  void remov(Item item){
    _items.remove(item);
    _price-=item.price;
    notifyListeners();
  }
  int get  count{return _items.length;}
  double get totalprice{return _price;}
  List<Item> get baskititem{return _items;}

}