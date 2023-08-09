
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeftMenuWidget extends StatefulWidget {
  const LeftMenuWidget({super.key});

  @override
  State<LeftMenuWidget> createState() => _LeftMenuWidgetState();
}

class _LeftMenuWidgetState extends State<LeftMenuWidget> {

  String currentselected = 'Menu'; 

  var leftlist = [
     'Reservation',
     'Table Services', 
     'Menu',
     'Delivery', 
      'Accounting', 

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: leftlist.map((e) {
        bool isSelected = currentselected ==e;
        return InkWell(
          onTap: (){
            currentselected =e;
            setState(() {
              
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 140,  
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:isSelected ? const Color(0xff2d2d2d) : Colors.transparent
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(e, textAlign: TextAlign.left, style: GoogleFonts.inter(color: isSelected ? Colors.white : Color(0xffA4A4A5) ),)),
            ),
          ),
        );
      }).toList(),
    );
  }
}