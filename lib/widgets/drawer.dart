import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "../utils/routes.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget getText(String txt, Color clr) {
    return Text(
      txt,
      style: TextStyle(color: clr),
    );
  }

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "http://0.gravatar.com/avatar/e32044d74849aad0a127b290b9cdac5a";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: getText("Noman Ali", Colors.white),
                accountEmail: getText("nomi.rana2020@gmail.com", Colors.white),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.homeRoute);
              },
              child: ListTile(
                leading: const Icon(CupertinoIcons.home),
                iconColor: Colors.white,
                title: getText("Home", Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.profileRoute);
              },
              child: ListTile(
                leading: const Icon(CupertinoIcons.profile_circled),
                iconColor: Colors.white,
                title: getText("Profile", Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.homeRoute);
              },
              child: ListTile(
                leading: const Icon(CupertinoIcons.mail),
                iconColor: Colors.white,
                title: getText("Email", Colors.white),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyRoutes.loginRoute);
                },
                child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}
