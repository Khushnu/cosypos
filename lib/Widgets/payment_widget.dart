import 'package:cosypos/main.dart';
import 'package:flutter/material.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key, });
  
  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}
var currentselected =  'images/dollar-symbol.png'; 
  List img = [
    'images/dollar-symbol.png', 
    'images/credit-card.png', 
    'images/ewallet.png'
  ];


class _PaymentWidgetState extends State<PaymentWidget> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height; 
    screenWidth = MediaQuery.sizeOf(context).width;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('    Payment Method', style: TextStyle(color: Color.fromARGB(255, 142, 145, 145)),),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 

          children: img.map((e) {
            bool isslected = currentselected ==e; 
            return InkWell( 
              onTap: (){
                setState(() {
                  currentselected=e;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                                      height: screenHeight * 0.1 - 28, 
                                      width: screenWidth * 0.1 - 68, 
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: isslected ? Colors.white : const Color(0xff292c2d),
                                        borderRadius: BorderRadius.circular(15), 
                                        border: Border.all(color: Colors.grey.shade400)
                                      ),
                                      child: Image.asset(e, height: 12, color: isslected ? Colors.black : Colors.white,),
                                    ),
              ),
            );
          }).toList(),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('   Cash' , style: TextStyle(color: Color.fromARGB(255, 198, 198, 198), fontSize: 13), 
            ), 
             Text('  Debit Card' , style: TextStyle(color: Color.fromARGB(255, 198, 198, 198), fontSize: 13), 
            ), 
             Text('E-Wallet' , style: TextStyle(color:  Color.fromARGB(255, 198, 198, 198), fontSize: 13), 
            )
          ],
        )
      ],
    ) ;
    
    
    
    
  }
}