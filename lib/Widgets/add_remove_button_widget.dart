import 'package:flutter/material.dart';

class AddRemoveWidget extends StatefulWidget {
  const AddRemoveWidget({super.key, required this.icons, this.ontap, required this.color, required this.iconColor});
  final IconData icons;
  final Function()? ontap; 
  final Color? color;
  final Color iconColor;
  @override
  State<AddRemoveWidget> createState() => _AddRemoveWidgetState();
}

class _AddRemoveWidgetState extends State<AddRemoveWidget> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.ontap,
      child: Container(
                            height: 35, 
                            width: 35 , 
                            decoration: BoxDecoration(
                              color: widget.color,
                              border: Border.all(
                                color: Color(0xff595959)
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(widget.icons, color: widget.iconColor,),
                          
                          
                          ),
    );
  }
}