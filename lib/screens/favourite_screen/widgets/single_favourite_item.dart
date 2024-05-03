import 'package:e_com2/constants/constants.dart';
import 'package:e_com2/models/product_model/product_model.dart';
import 'package:e_com2/provider/app_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleFavouriteItem extends StatefulWidget {
  final ProductModel singleProduct;
  const SingleFavouriteItem({super.key, required this.singleProduct});

  @override
  State<SingleFavouriteItem> createState() => _SingleFavouriteItemState();
}

class _SingleFavouriteItemState extends State<SingleFavouriteItem> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red, width: 1.3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2, spreadRadius: 0.5, color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red.shade100),
                child: Image.network(
                  widget.singleProduct.image,
                )),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(top: 6, right: 8),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.singleProduct.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                           AppProvider appProvider = Provider.of<AppProvider>(context, listen: false);
                     appProvider.removeFavouriteProduct(widget.singleProduct);
                      showMessage("Removed to wishlist");
                        },
                        child: const Text(
                          "Remove to wishlist",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25,top: 10),
            child: Row(
              children: [
                const Text(
                  'RS.',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  " ${widget.singleProduct.price.toString()}",
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
