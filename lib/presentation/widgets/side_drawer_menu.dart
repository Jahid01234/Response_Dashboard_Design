import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/data/model/model.dart';
import 'package:responsive_dashboard/resources/color/my_app_color.dart';

class SideDrawerMenu extends StatefulWidget {
  const SideDrawerMenu({super.key});

  @override
  State<SideDrawerMenu> createState() => _SideDrawerMenuState();
}

class _SideDrawerMenuState extends State<SideDrawerMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: MyAppColor.secondaryBg,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 20),
                height: 100,
                width: double.infinity,
                child: SizedBox(
                  height: 20,
                  width: 35,
                  child: SvgPicture.asset("assets/images/three_color.svg"),
                ),
              ),
              ...List.generate(
                menuIcons.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: SvgPicture.asset(
                              menuIcons[index],
                              color: selectedIndex == index
                                  ? Colors.black
                                  : MyAppColor.iconGray,
                              fit: BoxFit.cover,
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
