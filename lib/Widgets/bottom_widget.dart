import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class BottomProgressWidget extends StatelessWidget {
  const BottomProgressWidget({super.key, required this.text, 
  required this.colorbg, required this.items,  
  this.progress, required this.table, 
  required this.textColor, required this.borderside});
  final String text; 
  final String table;
  final Color colorbg; 
  final String items; 
  final Color textColor;
  final Border borderside; 
  final Widget? progress;
  @override
  Widget build(BuildContext context) {
    return Align( 
      alignment: Alignment.centerLeft,
      child: Container(
                      height: screenHeight * 0.2 - 10, 
                      width: screenWidth * 0.2 + 1, 
                     
                      decoration:  BoxDecoration(
                        border: borderside
                      
                      ), 
                      // alignment: Alignment.topLeft,
                      child: ListTile(
                        // contentPadding: EdgeInsets.symmetric( horizontal: 50),
                        leading: Container(
                          height: 50, 
                          width: 50, 
                          decoration: BoxDecoration(
                            color: colorbg, 
                            borderRadius: BorderRadius.circular(12)
                          ), 
                          child:  Center(child: Text(table, 
                          style:  TextStyle(fontSize: 14, color: textColor, 
                          fontWeight: FontWeight.bold),),),
                        ),
                        title:  Text(text, style: const TextStyle(color: Colors.white, fontSize: 16),),
                        subtitle:  Row(
                        mainAxisSize: MainAxisSize.max, 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text(items, 
                        style: const TextStyle(color: Color(0xff787878)),), 
                        const SizedBox(
                          width: 3,
                        ),
                        Image.asset('images/right-arrow.png', height: 20, 
                        color: const Color(0xff595959),) ,
                         const SizedBox(
                          width: 4,
                        ),
                        const Text('Kitchen',
                        style: TextStyle(color: Color(0xff787878)))
                      ],),
                      trailing: progress
                      ),
                      
                    ),
    );
  }
}