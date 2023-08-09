
import 'package:flutter/material.dart';

class MenuListModel {
final String id; 
final String name; 
 double price;
final Color color; 
int qunatity;

MenuListModel(this.color, {required this.id, required this.name, required this.price,  this.qunatity =1});

}

 List<MenuListModel> menulists = [
    MenuListModel(const Color(0xfff9c1d9), id: 'MainCourse', name: 'Fish And Chips', price: 7.24, qunatity: 1, ),
    MenuListModel(const Color(0xfff9c1d9), id: 'MainCourse', name: 'Roast Chicken', price: 12.24, qunatity: 1), 
    MenuListModel( const Color(0xfff9c1d9),id: 'MainCourse', name: 'Fillet Steak', price: 11.64, qunatity: 1), 
    MenuListModel(const Color(0xfff9c1d9),id: 'MainCourse', name: 'Beef Steak', price: 10.20, qunatity: 1), 
    MenuListModel(const Color(0xfff9c1d9), id: 'MainCourse', name: 'Roast Beef', price: 10.50, qunatity: 1), 
    MenuListModel(const Color(0xfff9c1d9),id: 'MainCourse', name: 'Lobster', price: 13.45, qunatity: 1), 
    MenuListModel(const Color(0xfff9c1d9),id: 'MainCourse', name: 'Buffalo Wings', price: 8.54, qunatity: 
    1), 
    MenuListModel(const Color(0xfff9c1d9), id: 'MainCourse', name: 'Red Caviar', price: 12.24, qunatity: 1),  
    MenuListModel(  const Color(0xffcfdddb),id: 'Breakfast', name: 'French Toast', price: 5.24, qunatity: 1),
    MenuListModel( const Color(0xffcfdddb),id: 'Breakfast', name: 'Omelette', price: 2.42, qunatity: 1), 
    MenuListModel( const Color(0xffcfdddb),id: 'Breakfast', name: 'Breakfast sandwich', price: 6.24, qunatity: 1), 
    MenuListModel( const Color(0xffcfdddb),id: 'Breakfast', name: 'Breakfast casserole', price: 4.12, qunatity: 1), 
    MenuListModel( const Color(0xffcfdddb),id: 'Breakfast', name: 'Hash browns', price: 4.32, qunatity: 1), 
    MenuListModel( const Color(0xffcfdddb),id: 'Breakfast', name: 'Avocado toast', price: 13.45, qunatity: 1), 
    MenuListModel( const Color(0xffe4ceed),id: 'Soups', name: 'Roasted Broccoli Soup', price: 8.54, qunatity: 1), 
    MenuListModel( const Color(0xffe4ceed),id: 'Soups', name: 'Ramen', price: 9.24, qunatity: 1),   
    MenuListModel( const Color(0xffe4ceed),id: 'Soups', name: 'French Onion Soup', price: 5.23, qunatity: 1), 
    MenuListModel( const Color(0xffe4ceed),id: 'Soups', name: 'Avocado toast', price: 13.45, qunatity: 1), 
    MenuListModel( const Color(0xffe4ceed),id: 'Soups', name: 'Cream Soups', price: 7.12, qunatity: 1), 
    MenuListModel(  const Color(0xffc2dae8),id: 'Pasta', name: 'Spaghetti', price: 5.54, qunatity: 1), 
    MenuListModel( const Color(0xffc2dae8),id: 'Pasta', name: 'Fettuccine', price: 8.24, qunatity: 1),   
    MenuListModel( const Color(0xffc2dae8),id: 'Pasta', name: 'Macaroni', price: 9.23, qunatity: 1), 
    MenuListModel( const Color(0xffc2dae8),id: 'Pasta', name: 'Penne', price: 12.45, qunatity: 1), 
    MenuListModel( const Color(0xffc2dae8),id: 'pasta', name: 'Lasagne', price: 18.54, qunatity: 1), 
    MenuListModel( const Color(0xffc2dae8),id: 'Pasta', name: 'Pasta alla Norma', price: 7.12, qunatity: 1), 
    MenuListModel( const Color(0xffc2dae8),id: 'pasta', name: 'Macaroni Cheese', price: 6.46, qunatity: 1), 
    MenuListModel( const Color(0xffc9caef), id: 'Sushi', name: 'Sashimi', price: 10.45, qunatity: 1), 
    MenuListModel( const Color(0xffc9caef),id: 'Sushi', name: 'Oshizushi', price: 7.12, qunatity: 1), 
    MenuListModel( const Color(0xffc9caef), id: 'Sushi', name: 'California Roll', price: 8.54, qunatity: 1), 
    MenuListModel(const Color(0xffe5d9de), id: 'Desserts', name: 'Cheesecake', price: 5.45, qunatity: 1),   
    MenuListModel(const Color(0xffe5d9de), id: 'Desserts', name: 'Cheesecake', price: 5.45, qunatity: 1),   
    MenuListModel(const Color(0xffe5d9de),id: 'Desserts', name: 'Cakes and Cupcakes', price: 9.35, qunatity: 1), 
    MenuListModel(const Color(0xffe5d9de),id: 'Desserts', name: 'Brownies', price: 8.11, qunatity: 1), 
    MenuListModel(const Color(0xffe5d9de),id: 'Desserts', name: 'pies', price: 13.44, qunatity: 
    1), 
    MenuListModel(const Color(0xffe5d9de),id: 'Desserts', name: 'Ice Cream', price: 4.25, qunatity: 1), 
    MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Smoothies', price: 5.46, qunatity: 1),   
     MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Soda', price: 7.12, qunatity: 1), 
    MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Mojito', price: 8.54, qunatity: 1), 
    MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Margarita', price: 5.45, qunatity: 1),   
    MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Hot chocolate', price: 9.35, qunatity: 1), 
    MenuListModel( const Color(0xfff0c8d0),id: 'Drinks', name: 'Mint tea', price: 8.11, qunatity: 1), 
    MenuListModel( const Color(0xffc2e9dc),id: 'Alcohol', name: 'Vodka', price: 15.44, qunatity: 1), 
    MenuListModel( const Color(0xffc2e9dc),id: 'Alcohol', name: 'Tequilla', price: 4.25, qunatity: 1), 
    MenuListModel( const Color(0xffc2e9dc),id: 'Alcohol', name: 'Rum', price: 5.46, qunatity: 1),    


  ];
