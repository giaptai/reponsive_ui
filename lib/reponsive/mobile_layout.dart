import 'package:flutter/material.dart';
import 'package:reposive_ui/constants/constants.dart';
import '../constants/utilities.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crush em T mobile'),
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                    peopleCircleAvatar(),
                  ],
                ),
              ),
              searchBar(),
              Expanded(
                  child: Column(
                children: [
                  dialogueBoxMobile(context),
                  dialogueBoxMobile(context),
                ],
              )),
            ],
          ),
        ),
        drawer: myDrawer);
  }
}
