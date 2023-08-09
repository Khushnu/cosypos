import 'package:cosypos/Widgets/bottom_widget.dart';
import 'package:cosypos/Widgets/bottomname_widget.dart';
import 'package:cosypos/Widgets/cart_list.dart';
import 'package:cosypos/Widgets/leftmenu_widget.dart';
import 'package:cosypos/Widgets/menu_widget.dart';
import 'package:cosypos/Widgets/top_widget.dart';
import 'package:cosypos/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
     screenHeight = MediaQuery.sizeOf(context).height; 
    screenWidth = MediaQuery.sizeOf(context).width;
    print(screenWidth);
    return  Scaffold(
      backgroundColor: const Color(0xff111315),
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            const Padding(
              padding:  EdgeInsets.symmetric(vertical: 12.0, horizontal:  24),
              child:  Align(
                alignment: Alignment.topLeft,
                child: TopWidget()),
            ),
             // ignore: sized_box_for_whitespace
             Container(
               width: screenWidth * 0.2 - 30,
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
                 child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                 const LeftMenuWidget(),
                  SizedBox(
                    height: screenHeight * 0.4,
                  ),
                 BottomWidget(title: 'L', 
                 bordercolor: Colors.white70, bgColor: Colors.pink.shade50, name: 'Lessie.K'),
                 const SizedBox(
                  height: 10,
                 ), 
                 const BottomWidget(title: 'K', 
                 bordercolor:Colors.white70, bgColor: Colors.grey, name: 'Karlos'), 
                 ],
                 ),
               ),
             ), 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 190),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    child: Container(      
                      width: screenWidth * 0.6 ,
                      // padding:  EdgeInsets.symmetric(vertical: 80, horizontal: 60 ),
                        child: const MenuWidget()),
                  )
                ),
            ),
        
           const Padding(
             padding: EdgeInsets.symmetric( horizontal: 14),
             child: Align(
              alignment: Alignment.topRight,
               child: CartList()
             ),
           ), 
           Align(
            alignment: Alignment.bottomLeft, 
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.7 + 30, 
              padding: const EdgeInsets.all(4),
             // color: Colors.white,
              child:  Row( 
                mainAxisAlignment: MainAxisAlignment.start, 
                
                children: [

                  const Text('   © 2023 Cosypos App ',
                   style: TextStyle(color: Color(0xff474A4B), fontSize: 14, ),),
                   const SizedBox(
                    width: 25,
                   ),
                 const BottomProgressWidget(text: 'Lessie K.', colorbg:  Color(0xffC9CAEF), items: '2 items', table: 'T4', textColor: Colors.black, borderside: Border(top: BorderSide(color: Color(0xff2E2F2F)) ,
                  right: BorderSide(color: Color(0xff2E2F2F)) ),), 
                 BottomProgressWidget(text: 'Karlos', colorbg: const Color(0xff2D2D2D), items: '3 items', table: 'T7', textColor: Colors.white, 
                 borderside: const Border(top: BorderSide(color: Color(0xff2E2F2F))),  progress: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Center(child: Text('Progress',
                      style: TextStyle(color: Colors.black, fontSize: 11),),),
                    ),), 
                     BottomProgressWidget(text: 'Lenda', colorbg: const Color(0xff2D2D2D), items: '9 items', table: 'T3', textColor: Colors.white, 
                 borderside: const Border(top: BorderSide(color: Color(0xff2E2F2F)), left: BorderSide(color: Color(0xff2E2F2F))),  progress: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Center(child: Text('Progress',
                      style: TextStyle(color: Colors.black, fontSize: 11),),),
                    ),)
                ],
              ),
            ),
           )
          ]
        ),
      ),
    );
  }
}