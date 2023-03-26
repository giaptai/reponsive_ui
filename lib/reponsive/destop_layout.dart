import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/utilities.dart';

class DestopLayout extends StatefulWidget {
  const DestopLayout({super.key});

  @override
  State<DestopLayout> createState() => _DestopLayoutState();
}

class _DestopLayoutState extends State<DestopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crush em destop'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myNavigationRail,
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
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: chatBar()),
              ],
            ),
          ),
          /*
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
          ),
          */
        ],
      ),
    );
  }
}
