import 'package:flutter/material.dart';
import 'package:krita/constants.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Bootstrap.house_door,
    Bootstrap.chat_dots,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: main_theme,
          iconSize: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              color: main_theme,
              iconSize: 50,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color.fromARGB(127, 227, 227, 227),
                      ),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(8.0),
                      child: TextField (
                                // controller: _searchController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                  // suffixIcon: IconButton(
                                  //   onPressed: () {},
                                  //   icon: Icon(Icons.clear),
                                  // ),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search),
                                  ),
                                ),
                              )
                          ),
                  Icon(
                    Bootstrap.sliders,
                    color: main_theme,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color.fromARGB(225, 255, 255, 255),
          size: 55,
        ),
        backgroundColor: main_theme,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              // final color = isActive ? Colors.activeNavigationBarColor : colors
              //     .notActiveNavigationBarColor;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 35,
                    color: main_theme,
                  ),
                  const SizedBox(height: 4),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 8),
                  //   child: AutoSizeText(
                  //     "brightness $index",
                  //     maxLines: 1,
                  //     style: TextStyle(color: color),
                  //     group: autoSizeGroup,
                  //   ),
                  // )
                ],
              );
            },
            backgroundColor: Colors.white,
            activeIndex: _bottomNavIndex,
            splashColor: Colors.white,
            // notchAndCornersAnimation: borderRadiusAnimation,
            splashSpeedInMilliseconds: 300,
            notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            onTap: (index) => setState(() => _bottomNavIndex = index),
            // hideAnimationController: _hideBottomBarAnimationController,
            shadow: BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 12,
              spreadRadius: 0.5,
              color: Color.fromARGB(225, 175, 175, 175),
            ),
      ),
    );
  }
}