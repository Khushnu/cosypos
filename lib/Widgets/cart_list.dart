import 'package:cosypos/Provider/provider.dart';
import 'package:cosypos/Widgets/payment_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'menulist_widget.dart';

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

int quantity = 1;
bool isOrder = false; 

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    double tax = 0.08;
    var cart = context.watch<AppNotifier>().cartlist;
    double total = 0;
    double priceItem = 0.00;
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;

    if (cart.isEmpty) {
      0;
    } else {
      total = cart
          .map((e) => e.qunatity * e.price)
          .reduce((value, element) => value + element) ;

    } 

    var res = tax * total;
    var finaltoal = res + total;
    return SizedBox(
      // height: screenHeight ,
      width: screenWidth * 0.3 - 42,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Table 5 ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                TextSpan(
                    text: '\nLessie.K',
                    style: TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontWeight: FontWeight.normal,
                        fontSize: 15))
              ])),
              SizedBox(
                width: screenWidth * 0.2 - 30,
              ),
             // Spacer(),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(29)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          AnimatedContainer(
            height: screenHeight * 0.9 - 60,
            width: screenWidth * 0.3 - 56,
            curve: Curves.bounceIn, 
            
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: const Color(0xff111315),
                borderRadius: BorderRadius.circular(12)),
            duration: const Duration(milliseconds: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Expanded(
                        child: ListView.builder(
                            itemCount: cart.length,
                            itemBuilder: (_, index) {
                              var item = cart[index];
                               priceItem = item.price * item.qunatity;  
                               priceItem.toStringAsFixed(2);
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(children: [
                                  Slidable(
                                    direction: Axis.horizontal,
                                    enabled: true,
                                    
                                    startActionPane: ActionPane(
                                     
                                        motion: const StretchMotion(),
                                        children: [
                                          

                                          SlidableAction(
                                            autoClose: true,
                                            spacing: 1,
                                            // padding: const EdgeInsets.all(12),
                                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                            onPressed: (ac) async {
                                              ac = context
                                                  .read<AppNotifier>()
                                                  .removefromcart(cart[index]);
                                             await Future.delayed(const Duration(seconds: 1));

                                          
                                            },
                                            backgroundColor: Colors.red,
                                            foregroundColor: Colors.white,
                                            icon: Icons.delete,
                                          ),
                                          
                                        ]),
                                    child: Container(
                                        height: 55,
                                        padding: const EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff292c2d),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 10,
                                              child: Text(
                                                "${index == 0 ? 1 : index + 1}",
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 9,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                  // ignore: unnecessary_string_interpolations
                                                  text: '${item.name}',
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                            ' x${item.qunatity < 1 ? eachItemprice : item.qunatity}',
                                                        style: const TextStyle(
                                                            ))
                                                  ]),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "\$${ priceItem < 1 ? item.price : priceItem } ",
                                              //  Text("\$${total < 1 ? item.price : total.toStringAsFixed(2)  } ",
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                  ),
                                ]),
                              );
                            })),
                // if (cart.isEmpty)
                //   SizedBox(
                //     height: screenHeight * 0.2 + 90,
                //   ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: cart.isNotEmpty ? screenHeight * 0.5 -7 : screenHeight * 0.8  ,
                    padding: const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: const Color(0xff292C2D),
                        borderRadius: BorderRadius.circular(10)),
                    child:  Column(
                      children: [
                        cart.isEmpty ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/dinner.png', height: 80, color: const Color(0xff808080),), 
                            const Text('No items Added', style: TextStyle(color: Color(0xff808080), fontSize: 16),)
                          ],
                        ) : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Subtotal',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '\$${total.toStringAsFixed(2)}',
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Tax',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '\$${res.toStringAsFixed(2)}',
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const DottedLine(
                              direction: Axis.horizontal,
                              dashColor: Colors.white,
                              dashGapRadius: 3,
                              lineThickness: 2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 21),
                                ),
                                Text(
                                  '\$${finaltoal.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 21),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: cart.isEmpty ? screenHeight * 0.4 + 40  : screenHeight * 0.2 - 70,
                        ),
                        const PaymentWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell( 
                          onTap: () async { 
                            
                            setState(() {
                              isOrder = true; 
                            });

                              await Future.delayed(const Duration(seconds: 2), (){
                                setState(() {
                                  isOrder = false;
                                });
                              }); 
                             
                            
                          },
                          child:   Container(
                            height: screenHeight * 0.1 - 36,
                            width: screenWidth * 0.2 + 30,
                            decoration: BoxDecoration(
                                color: Color(0xffECEFF1),
                                borderRadius: BorderRadius.circular(50)),
                            child: isOrder ? Center(child: Image.asset('images/sf.gif', color: Colors.black, height: 24,),)  : const Center(
                                child: Text(
                              'Place Order',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
