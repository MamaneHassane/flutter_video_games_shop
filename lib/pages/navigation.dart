// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // La liste des pages
  final List pages = [
    
  ];

  // L'index courant
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex] ,
      appBar: AppBar(
        title: Text(
          'VideoGameShop'
        ),
      ) ,
      bottomNavigationBar: GNav(
        selectedIndex: currentPageIndex,
        onTabChange: (index){
          setState(() {
            currentPageIndex = index;
          });
        },
        tabs: [
          GButton(
            icon: Icons.favorite,
            text: 'Wishlist'
          ),
          GButton(
            icon: Icons.home_outlined,
            text: 'Home'
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings'
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'Profile'
          )
      ]),
    );
  }
}