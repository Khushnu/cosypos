import 'package:cosypos/Model/menulist.dart';
import 'package:cosypos/Widgets/add_remove_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/provider.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({super.key, required this.id, required this.menulists,});
   final List<MenuListModel> menulists;
  final String id;
  
  @override
  State<MenuListWidget> createState() => _MenuListWidgetState();
}

int eachItemprice =1; 

class _MenuListWidgetState extends State<MenuListWidget> {

var currentselected =MenuListModel(const Color(0xfff9c1d9), 
id: 'MainCourse', name: 'Fish And Chips', price: 7.24, qunatity: 1, );

Color bgColor=const Color(0xff2d2d2d);
 
Color selectedTextColor = const Color.fromARGB(255, 229, 229, 229);
  @override
  Widget build(BuildContext context) {
    
    var el = context.watch<AppNotifier>().list;
    var cart = context.watch<AppNotifier>().cartlist;
    el = widget.menulists;

    return   Wrap(
       spacing: 12,
          runSpacing: 12,
      children:   (el.where((element) => element.id == widget.id )).map((e) {
        bool isselected = currentselected ==e;


      if(cart.any((element) => element.name==e.name)){
      bgColor = e.color;
      selectedTextColor = Colors.black;
       eachItemprice = e.qunatity;
      } else {
        bgColor=const Color(0xff2d2d2d); 
        selectedTextColor = const Color.fromARGB(255, 229, 229, 229);
         eachItemprice = e.qunatity = 1; 
      }
        return  ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: (){
              context.read<AppNotifier>().addToCart(e);
              setState(() {
                // cart[(cart.indexOf(e))].isSelected = !cart[(cart.indexOf(e))].isSelected ;
              });
              // currentselected =e; 
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInToLinear,
               height: 170, 
                width: 220,
                decoration: BoxDecoration(
                  color:  bgColor,
                 border: Border(
                  left: BorderSide(
                    color: e.color, 
                    width: 10
                  )
                 )
                ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Row(
                      mainAxisSize: MainAxisSize.min, 
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const Text('Order', 
                      style: TextStyle(color: Color(0xff787878)),), 
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset('images/right-arrow.png', height: 20, 
                      color: const Color(0xff595959),) ,
                       const SizedBox(
                        width: 6,
                      ),
                      const Text('Kitchen',
                      style: TextStyle(color: Color(0xff787878)))
                    ],), 
                    const SizedBox(
                      height: 17,
                    ),
                    Text(e.name,style:  TextStyle(color: selectedTextColor, 
                    fontSize: 17, fontWeight: FontWeight.w400)),
                    const SizedBox(
                      height: 10,
                    ), 
                    Text('\$${e.price}', style :  const TextStyle(color: Color(0xff6A6A6A), fontSize: 15,  )),
                     const SizedBox(
                      height: 29,
                    ), 
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         AddRemoveWidget(icons: Icons.remove, 
                         color: isselected ? e.color : Colors.transparent, ontap: e.qunatity == 1 ? null : (){
                          setState(() {
                            context.read<AppNotifier>().decreasequantity(e.name); 
                          });
                         } , iconColor: selectedTextColor,),
                         const SizedBox(
                            width: 6,
                          ),
                             Text('${eachItemprice < 1 ? 1 : eachItemprice}', 
                             style:  TextStyle(fontSize: 20, color: selectedTextColor),),
                           const SizedBox(
                            width: 6,
                          ),
                         AddRemoveWidget(icons: Icons.add, 
                         color:Colors.transparent, ontap: (){ 
                            if(cart.contains(e)){
                               context.read<AppNotifier>().increasequantity(e.name);
                            } else {
                          context.read<AppNotifier>().addToCart(e);
                            }
                         }, iconColor: selectedTextColor,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}