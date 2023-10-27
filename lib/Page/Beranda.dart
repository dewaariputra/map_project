import 'package:flutter/material.dart';
import 'package:map_project/Page/Home.dart';
import 'package:map_project/Page/LineChart.dart';
import 'package:map_project/Page/weather.dart';
import 'package:map_project/pages/addPoly.dart';
import 'package:map_project/pages/polygon.dart';

import 'package:map_project/pages/slidingUP.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    AddPoly(),
    WeatherApp(),
    LineChart(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 25),
      Icon(Icons.location_on, size: 25),
      Icon(Icons.sunny_snowing, size: 25),
      Icon(Icons.stacked_line_chart_sharp, size: 25),
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "Maps"),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Weather"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_line_chart_sharp), label: "Chart"),
        ],
      ),
    );
  }
}
