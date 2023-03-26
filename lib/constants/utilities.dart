import 'package:flutter/material.dart';

import '../wigets/mobile_chat.dart';

Widget peopleCircleAvatar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3.0),
    child: const CircleAvatar(
      backgroundColor: Colors.red,
      radius: 25,
      child: CircleAvatar(
        radius: 25,
        child: Icon(Icons.person, size: 25),
      ),
    ),
  );
  Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.red,
    ),
    child: const Icon(Icons.person, size: 32),
  );
}

Widget dialogueBox() {
  return SizedBox(
    height: 80,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: const Icon(Icons.person, size: 32),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mr.Mackey',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Expanded(
                  child: Text(
                    'Great, see you later !',
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget dialogueBoxMobile(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MobileChat()),
      );
    },
    child: SizedBox(
      height: 80,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Icon(Icons.person, size: 32),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mr.Mackey',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Expanded(
                    child: Text(
                      'Great, see you later !',
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget BoxChatting() {
  return SizedBox(
    height: 100,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(Icons.person, size: 32),
            ),
            const Text('9:00 am'),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(12),
              bottomRight: const Radius.circular(12),
              topRight: const Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Great !, see you later'),
          ),
        )
      ],
    ),
  );
}

Widget chatBar() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            prefixIcon: const Icon(Icons.sentiment_satisfied),
            suffixIcon: Transform.rotate(
              angle: 45 * 3.14 / 180,
              child: Icon(Icons.attach_file),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0,
                )),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 0),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0,
                )),
            hintText: 'Type a message',
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Transform.rotate(
          angle: -45 * 3.14 / 180,
          child: const Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget searchBar() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: const Icon(Icons.search_sharp),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Search',
      ),
    ),
  );
}
