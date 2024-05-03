import 'package:e_com2/constants/constants.dart';
import 'package:e_com2/models/product_model/product_model.dart';
import 'package:e_com2/provider/app_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleCartItem extends StatefulWidget {
  final ProductModel singleProduct;
  const SingleCartItem({super.key, required this.singleProduct});

  @override
  State<SingleCartItem> createState() => _SingleCartItemState();
}

class _SingleCartItemState extends State<SingleCartItem> {
  int qty = 1;
  @override
  void initState() {
    qty = widget.singleProduct.qty ?? 1;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          children: [
                            CupertinoButton(
                              onPressed: () {
                                if (qty >= 1) {
                                  setState(() {
                                    qty--;
                                  });
                                }
                              },
                              padding: EdgeInsets.zero,
                              child: CircleAvatar(
                                maxRadius: 13,
                                backgroundColor: Colors.red.shade400,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              qty.toString(),
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  qty++;
                                });
                              },
                              padding: EdgeInsets.zero,
                              child: CircleAvatar(
                                maxRadius: 13,
                                backgroundColor: Colors.red.shade400,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                         if (!appProvider.getFavouriteProductList.contains(
                            widget.singleProduct,
                          )) {
                        appProvider.addFavouriteProduct(widget.singleProduct);
                      } else {
                        
                        appProvider
                            .removeFavouriteProduct(widget.singleProduct);
                      }
                        },
                        child: Text(
                          appProvider.getFavouriteProductList.contains(
                            widget.singleProduct,
                          )
                              ? "Remove to WishList"
                              : "Add from WishList",
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        appProvider.removeCartProduct(widget.singleProduct);
                        showMessage("Removed From Cart");
                      },
                      child: const CircleAvatar(
                        maxRadius: 13,
                        child: Icon(
                          Icons.delete,
                          size: 24,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 10),
            child: Row(
              children: [
                const Text(
                  'RS.',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  " ${widget.singleProduct.price.toString()}",
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
