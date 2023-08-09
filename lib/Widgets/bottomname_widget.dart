import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.title, required this.bordercolor, required this.bgColor, required this.name});
  final String title; 
  final Color bordercolor; 
  final Color bgColor; 

  final String name;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 42, 
                        width: 110, 
                        decoration: BoxDecoration(
                          color: Color(0xff2d2d2d), 
                          borderRadius: BorderRadius.circular(19), 
                          border: Border.all(
                            color: bordercolor
                          )
                        ), 
                        child:  Padding(
                          padding:  EdgeInsets.all(2.0),
                          child: 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: bgColor,
                                    // backgroundColor: Color(0xffA4A4A5),
                                    child: Text(title, style: TextStyle(color: Colors.black),),
                                  ), 
                                 SizedBox(
                                  width: 4,
                                 ),
                                  Text(name, style: TextStyle(color: Colors.white),)
                                ],
                              ), 

                              
                            
                          ),
                        ),
                        
                    ],
                  ),
                
                  
                );
  }
}