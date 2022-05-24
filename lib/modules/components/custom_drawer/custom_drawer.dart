import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Widget customListTile(String title, {required IconData icon}) {
    return ListTile(
      title: Text(
        title,
      ),
      leading: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          customListTile('Inicio', icon: Icons.home),
        ],
      ),
    );
  }
}
