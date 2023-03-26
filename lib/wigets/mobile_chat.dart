import 'package:flutter/material.dart';
import '../constants/utilities.dart';

class MobileChat extends StatelessWidget {
  const MobileChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
    );
  }
}
