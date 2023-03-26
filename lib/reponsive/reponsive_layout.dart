import 'package:flutter/material.dart';

class ReponsiveLayout extends StatelessWidget {
  ReponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.destopScaffold});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget destopScaffold;

  // ReponsiveLayout({this.mobileScaffold, this.tabletScaffold, this.destopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return destopScaffold;
        }
      },
    );
  }
}
