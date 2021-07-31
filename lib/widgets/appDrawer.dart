import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Hey Sarthak"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mode_edit),
            title: Text("Tile 1"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mode_edit),
            title: Text("Tile 2"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
