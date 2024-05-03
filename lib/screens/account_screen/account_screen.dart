import 'package:e_com2/widgets/primary_button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Icon(
                  Icons.person_outline,
                  size: 120,
                ),
                Text(
                  "yashi",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "yashi@gmail.com",
                ),
              const  SizedBox(height: 12,),
                SizedBox(
                  width: 130,
                  child: PrimaryButton(
                    title: "Edit Profile",
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )),
           Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text("your Order"),
                  ),
                  ListTile(
                     onTap: () {},
                    leading: Icon(Icons.favorite_outline),
                    title: Text("Favourite"),
                  ),
                  ListTile(
                     onTap: () {},
                    leading: Icon(Icons.info_outline),
                    title: Text("About us"),
                  ),
                  ListTile(
                     onTap: () {},
                    leading: Icon(Icons.support_outlined),
                    title: Text("Support"),
                  ),
                   ListTile(
                     onTap: () {},
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Log Out"),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text("Version 1.0.0")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
