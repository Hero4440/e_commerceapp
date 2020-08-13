import 'package:flutter/material.dart';
import 'package:com/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazsadaer",
      "picture": "images/products/PUBG2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blasdaazer",
      "picture": "images/products/PUBG3.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blaadsdzer",
      "picture": "images/products/PUBG4.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazasdaer",
      "picture": "images/products/PUBG1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazasdaer",
      "picture": "images/products/PUBG2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazasdaer",
      "picture": "images/products/PUBG3.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: product_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  Single_prod(
      {this.prod_name,
      this.prod_pricture,
      this.prod_old_price,
      this.prod_price});

  get style => null;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero"),
          child: Material(
            child: InkWell(
//              here we pass the parameter
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_pricture,
                    ),
                  )),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ),
                      Text(
                        "\ Rs. $prod_price",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                child: Image.asset(
                  prod_pricture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
