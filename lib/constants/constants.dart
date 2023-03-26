import 'package:flutter/material.dart';

var myAppBar = AppBar();

Drawer myDrawer = Drawer(
    child: Column(
  children: [
    SizedBox(
      height: 60,
      child: DrawerHeader(
        child: Text('Tai Nguyen'),
      ),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text('Đoạn chat'),
    ),
    ListTile(
      leading: Icon(Icons.group),
      title: Text('Nhóm'),
    ),
    ListTile(
      leading: Icon(Icons.question_answer),
      title: Text('FAQS'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('Setting'),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('Logout'),
    ),
  ],
));

var myNavigationRail = NavigationRail(
  labelType: NavigationRailLabelType.all,
  // minWidth: 150,
  selectedIndex: 0,
  onDestinationSelected: (value) {},
  destinations: [
    NavigationRailDestination(
      icon: Icon(Icons.chat),
      label: Text('Đoạn chat'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.group),
      label: Text('Nhóm'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.settings),
      label: Text('Setting'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.logout),
      label: Text('Logout'),
    ),
  ],
);
