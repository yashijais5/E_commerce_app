import 'package:e_com2/provider/app_provider.dart';
import 'package:e_com2/screens/cart_screen/widgets/single_cart_item.dart';
import 'package:e_com2/screens/favourite_screen/widgets/single_favourite_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
   AppProvider appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:appProvider.getFavouriteProductList.isEmpty ?
      const Center(
        child: Text("Empty"),
      ):
       ListView.builder(
          itemCount: appProvider.getFavouriteProductList.length,
          padding: const EdgeInsets.all(12),
          itemBuilder: (ctx, index) {
            return SingleFavouriteItem(singleProduct:appProvider.getFavouriteProductList[index],);
          }),
    );
  }
}