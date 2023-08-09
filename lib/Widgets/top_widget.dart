
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start, 
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 30, 
              width: 30,
              child: Image.asset('images/burger.png', color: Colors.grey,)), 
              const SizedBox(
                width: 15,
              ), 
               Text('COSYPOS', style: GoogleFonts.inder(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(
                width: 45,
              ),
              SizedBox(
                width: 190,
                child: TextFormField(
                  decoration:  InputDecoration(
                    fillColor: const Color(0xff2d2d2d),
                    filled: true,
                    hintText: 'Search', 
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey,),
                    contentPadding: const EdgeInsets.all(2),
                  
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                       
                      )
                    ), 
                    focusedBorder: OutlineInputBorder()
                  ),
                ),
              ),
            const SizedBox(
                width: 100,
              ),
            
              
          ],
         );
  }
}