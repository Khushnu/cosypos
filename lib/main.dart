
import 'package:cosypos/Provider/provider.dart';
import 'package:cosypos/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider( 
    create: (BuildContext context)  => AppNotifier(),
    child: const MyApp()));
}


double screenHeight =0; 
double screenWidth =0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height; 
    screenWidth = MediaQuery.sizeOf(context).width;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}