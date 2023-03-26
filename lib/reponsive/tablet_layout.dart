import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/utilities.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crush em T tablet'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    searchBar(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                    dialogueBox(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      // child: ,
                    ),
                  ),
                  chatBar(),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: myDrawer,
    );
  }
}
