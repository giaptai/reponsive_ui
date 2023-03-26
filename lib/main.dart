import 'package:flutter/material.dart';
import 'package:reposive_ui/reponsive/destop_layout.dart';
import 'package:reposive_ui/reponsive/mobile_layout.dart';
import 'package:reposive_ui/reponsive/reponsive_layout.dart';
import 'package:reposive_ui/reponsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReponsiveLayout(
          mobileScaffold: MobileLayout(),
          tabletScaffold: TabletLayout(),
          destopScaffold: DestopLayout()),
    );
  }
}
