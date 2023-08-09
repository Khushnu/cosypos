import 'package:cosypos/Model/menu.dart';
import 'package:cosypos/Model/menulist.dart';
import 'package:cosypos/Widgets/menulist_widget.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  var currentSelected = Menu(
    title: 'Breakfast',
    color: const Color(0xffcfdddb),
    img: 'images/coffee-cup.png',
  );

  bool isSelected = true;

  @override
  void initState() {
  
    // ignore: unrelated_type_equality_checks

    for (var element in menuList) {
      element.items = menulists.where((el) => el.id == element.title).length;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    // menuList = context.watch<AppNotifier>().toplist;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: menuList.map((e) {
            isSelected = currentSelected == e;
            return InkWell(
              onTap: () {
                setState(() {
                  e.items = menulists
                      .where((element) => element.id == e.title)
                      .length;
                  currentSelected = e;
                });
              },
              child: Container(
                height: 170,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: e.color),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        e.img,
                        height: 30,
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Text(
                        e.title,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '${e.items ?? 0} items',
                        style: const TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          indent: 20,
          endIndent: 120,
          thickness: 1.2,
          color: Color(0xff353535),
        ),
        const SizedBox(
          height: 20,
        ),
        MenuListWidget(
          id: currentSelected.title,
          menulists: menulists,
        )
      ],
    );
  }
}
