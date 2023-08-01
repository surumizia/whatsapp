import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      color: Colors.black87,
      onSelected: (value) {},
      itemBuilder: (BuildContext)      {
        return const [
          PopupMenuItem(
            child: Text(
              "New group",
              style: TextStyle(color: Colors.white),
            ),
            value: '/New group',
          ),
          PopupMenuItem(
            child: Text("New broadcast", style: TextStyle(color: Colors.white)),
            value: '/New broadcast',
          ),
          PopupMenuItem(
            child:
                Text("Linked message", style: TextStyle(color: Colors.white)),
            value: '/Linked message',
          ),
          PopupMenuItem(
            child:
                Text("Starred messages", style: TextStyle(color: Colors.white)),
            value: '/Starred message',
          ),
          PopupMenuItem(
            child: Text("Payments", style: TextStyle(color: Colors.white)),
            value: '/Payments',
          ),
          PopupMenuItem(
            child: Text("Settings", style: TextStyle(color: Colors.white)),
            value: '/Settings',
          ),
        ];
      },
    );
  }
}
