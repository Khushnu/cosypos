import 'package:flutter/material.dart';

class Menu{ 
   String title; 
   Color color; 
  int? items;
   String img; 

  Menu({required this.title, required this.color, required this.img, this.items}); 
  
}
List<Menu> menuList = [
  Menu(title: 'Breakfast', color: const Color(0xffcfdddb), img: 'images/coffee-cup.png', ), 
  Menu(title: 'Soups', color: const Color(0xffe4ceed), img: 'images/soup.png', ),   
   Menu(title: 'Pasta', color: const Color(0xffc2dae8), img: 'images/pasta.png', ),   
   Menu(title: 'Sushi', color: const Color(0xffc9caef), img: 'images/sushi.png', ),
   Menu(title: 'MainCourse', color: const Color(0xfff9c1d9), img: 'images/dinner.png', ), 
   Menu(title: 'Desserts', color: const Color(0xffe5d9de), img: 'images/dessert.png', ),  
   Menu(title: 'Drinks', color: const Color(0xfff0c8d0), img: 'images/soft-drink.png', ),  
  Menu(title: 'Alcohol', color: const Color(0xffc2e9dc), img: 'images/wine-bottle.png',),  
]; 