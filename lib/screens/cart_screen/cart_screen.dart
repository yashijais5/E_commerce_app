import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Screen",
        style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        itemBuilder: (ctx,index){
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.red,width: 1.3),
          ),
          child: Row(children: [
            Container(
              height: 140,
              color: Colors.red.withOpacity(0.5),
            )

          ],),

        );
      }),
    );
  }
}