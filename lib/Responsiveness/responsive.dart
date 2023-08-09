import 'package:flutter/material.dart';

class Responsive  extends StatelessWidget{ 


const Responsive({super.key, required this.smallScreen, required this.tabletScreen, required this.desktopScreen});

final Widget? smallScreen; 
final Widget? tabletScreen; 
final Widget desktopScreen; 


bool isSmallScreen(BuildContext context){
  return MediaQuery.sizeOf(context).width < 786;
}

bool isTabletScreen(BuildContext context){
  return MediaQuery.sizeOf(context).width <= 992  && MediaQuery.of(context).size.width <=1200; 
}

bool isDesktopScreen(BuildContext context){
  return MediaQuery.sizeOf(context).width > 1200;
}

  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(builder: (_, constraints){
    if (constraints.maxWidth > 1200 ) {
      return desktopScreen;
    } else if(constraints.maxWidth <= 786 && constraints.maxWidth <=992){
      return smallScreen ?? tabletScreen!; 
    } else {
      return smallScreen?? desktopScreen;
    }
   });
  
  }



}