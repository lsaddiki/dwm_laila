import 'package:dwm_laila/pages/widgets/drawer.header.dart';
import 'package:dwm_laila/pages/widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          MyDrawerItem(
              title: "Home",
              itemIcon: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          MyDrawerItem(
              title: "Counter",
              itemIcon: Icon(Icons.access_time),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              }),
          MyDrawerItem(
              title: "Products",
              itemIcon: Icon(Icons.production_quantity_limits),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/products");
              }),
        ],
      ),
    );
  }
}
