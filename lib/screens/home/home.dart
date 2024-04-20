import 'package:e_com2/constants/routes.dart';
import 'package:e_com2/models/product_model/product_model.dart';
import 'package:e_com2/screens/product_details/product_details.dart';
import 'package:e_com2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopTitles(subtitle: "", title: "E Commerce"),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Search..."),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0, bottom: 15),
              child: const Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: CategoriesList.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(e),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
            const SizedBox(height: 12,),
           const Padding(
              padding: const EdgeInsets.only(top: 12.0,left: 12),
              child: Text(
                "Best Product",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 12,),
             Container(
              height: 450,
              width: 400,
                         child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
              
                itemCount: bestProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,  
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                ),
                itemBuilder: (ctx, index) {
                  ProductModel singleProduct = bestProducts[index];
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          height: 40,
                          width: 60,
                          child: Image.network(
                            singleProduct.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          singleProduct.name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Price: ${singleProduct.price}"),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 45,
                          width: 140,
                          child: OutlinedButton(
                            onPressed: () {
                              Routes.instance.push(widget: ProductDetails(singleProduct: singleProduct), context: context);
                            },
                            child: Text(
                              "Buy",
                           
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
                         ),
                       ),
          ],
        ),
      ),
    );
  }
}

List<String> CategoriesList = [
  "https://cdn.pixabay.com/photo/2013/07/13/01/24/french-fries-155679_640.png",
  "https://freesvg.org/img/Gerald_G_Fast_Food_Lunch_Dinner_(FF_Menu)_6.png",
  "https://cdn-icons-png.flaticon.com/512/7715/7715582.png",
  "https://cdn.pixabay.com/photo/2023/08/12/02/56/tacos-8184634_1280.png",
  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/938a9dd6-344c-4e4c-95c9-df46c57cebc9/dg8ooq3-82f0e7dd-27ec-45d3-a128-d8d4d33701b1.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzkzOGE5ZGQ2LTM0NGMtNGU0Yy05NWM5LWRmNDZjNTdjZWJjOVwvZGc4b29xMy04MmYwZTdkZC0yN2VjLTQ1ZDMtYTEyOC1kOGQ0ZDMzNzAxYjEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.68RJmOiI1OkmMXCWXUPSKBoyi5F9p68V1nx0wicfWhw",
];

List<ProductModel> bestProducts = [
  ProductModel(
    id: "1",
    image:
        "https://images.everydayhealth.com/images/diet-nutrition/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg",
    name: "Strawberry",
    description: "this is good ",
    price: "15",
    status: "pending",
    isfavourite: false,
  ),
  ProductModel(
    id: "4",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZqDHnjqp1Vb8UILHBn0im7N2xlHQjT4f0Q&usqp=CAU",
    name: "Apple",
    description: "Eat aaple when its morning ",
    price: "10",
    status: "pending",
    isfavourite: false,
  ),
  ProductModel(
    id: "4",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZqDHnjqp1Vb8UILHBn0im7N2xlHQjT4f0Q&usqp=CAU",
    name: "Apple",
    description: "Eat aaple when its morning ",
    price: "10",
    status: "pending",
    isfavourite: false,
  ),
  ProductModel(
    id: "2",
    image:
        "https://images.news18.com/ibnlive/uploads/2022/03/watermelon-164700207416x9.jpg?impolicy=website&width=1200&height=675",
    name: "Watermellon",
    description: "nice fruit for eating ",
    price: "25",
    status: "pending",
    isfavourite: false,
  ),
  ProductModel(
    id: "3",
    image:
        "https://images.everydayhealth.com/images/diet-nutrition/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg",
    name: "Banana ",
    description: "this is good for health ",
    price: "30",
    status: "pending",
    isfavourite: false,
  ),
  ProductModel(
    id: "4",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZqDHnjqp1Vb8UILHBn0im7N2xlHQjT4f0Q&usqp=CAU",
    name: "Apple",
    description: "Eat aaple when its morning ",
    price: "10",
    status: "pending",
    isfavourite: false,
  ),
];
