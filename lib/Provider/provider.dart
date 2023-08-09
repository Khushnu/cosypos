
import 'package:cosypos/Model/menulist.dart';
import 'package:flutter/material.dart';

class AppNotifier extends ChangeNotifier {

  List<MenuListModel> _cart = []; 

  List<MenuListModel> get cartlist => _cart;
  List<MenuListModel> get list => menulists; 

  set list(List<MenuListModel> lists){ 
    list = lists.toList(); 
    notifyListeners();

  }



increasequantity(String title){
  var a= _cart.indexWhere((element) => element.name == title); 
  if(a!=-1){
    _cart[a].qunatity++; 
  int i = menulists.indexWhere((element) => element.name == title); 
  if(i!=-1) {
    menulists[i].qunatity=_cart[a].qunatity;
  }
  }
  notifyListeners();
 }


decreasequantity(String title){ 
  var a= _cart.indexWhere((element) => element.name == title); 
  if(a!=-1){
    _cart[a].qunatity--; 
  }
   int i = menulists.indexWhere((element) => element.name == title); 
  if(a!=-1){
    menulists[i].qunatity = _cart[a].qunatity;
  }
  notifyListeners();
 }

  
  total(){
    double total =0; 
   _cart.map((e) => e.price).reduce((value, element) => value + element); 
    notifyListeners(); 
    return total; 
  }


  addToCart(MenuListModel item) {
    if(!_cart.any((element) => element.name==item.name)) {
      _cart.add(item);
    } 
    notifyListeners();
  }

  removefromcart(MenuListModel item){
    _cart.remove(item); 
    notifyListeners();
  }
}