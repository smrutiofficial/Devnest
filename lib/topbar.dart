import 'package:flutter/material.dart';
import 'package:devnest/tpbar.dart';

class Topbar extends StatefulWidget {
  const Topbar({super.key});

  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  int activeContainer = 0;

  void updateActiveContainer(int index) {
    setState(() {
      activeContainer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   final colorSets = [
      [
        const Color.fromARGB(255, 21, 28, 38),
        const Color.fromARGB(255, 50, 68, 94),
      ],
      [
        const Color(0xff1F2139),
        const Color(0xff5C61A9),
      ],
      [
        const Color(0xff1F2D39),
        const Color(0xff5AA7A7),
      ],
    ];
    var selectedColors = colorSets[activeContainer];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: selectedColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
        child: Conter(
          activeContainer: activeContainer,
          onContainerChange: updateActiveContainer,
        ),
      ),
    );
  }
}
