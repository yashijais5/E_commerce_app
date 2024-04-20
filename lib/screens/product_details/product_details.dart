import 'package:e_com2/constants/routes.dart';
import 'package:e_com2/models/product_model/product_model.dart';
import 'package:e_com2/screens/cart_screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel singleProduct;
  const ProductDetails({super.key, required this.singleProduct});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int qty = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Routes.instance.push(widget: CartScreen(), context: context);
          },
           icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                widget.singleProduct.image,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.singleProduct.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.singleProduct.isfavourite =
                            !widget.singleProduct.isfavourite;
                      });
                    },
                    icon: Icon(widget.singleProduct.isfavourite
                        ? Icons.favorite_border
                        : Icons.favorite_border),
                  )
                ],
              ),
              Text(widget.singleProduct.description),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      if(qty>=1){
                        setState(() {
                          qty--;
                        });
                      }
                    },
                    padding: EdgeInsets.zero,
                    child: const CircleAvatar(
                      child: Icon(Icons.remove),
                    ),
                  ),
                   const SizedBox(
                    width: 12,
                  ),
                  Text(qty.toString(), style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        qty++;
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const CircleAvatar(
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
             const Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){}, child: Text("ADD TO CART"),
                ),
               const SizedBox(width:24 ,),
                SizedBox(
                 height: 40,
                 width: 150,
                 child: ElevatedButton(onPressed: (){}, child:const Text("BUY",style: TextStyle(color:Colors.white),),))
              ],
             ),
            const SizedBox(height: 24,),
              
            ],
          ),
        ),
      ),
    );
  }
}
