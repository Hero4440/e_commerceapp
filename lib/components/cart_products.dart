import 'package:flutter/material.dart';

class cart_products extends StatefulWidget {
  @override
  _cart_productsState createState() => _cart_productsState();
}

class _cart_productsState extends State<cart_products> {
  var products_on_the_cart = [
    {
      "name": "Blazsadaer",
      "picture": "images/products/PUBG2.jpeg",
      "price": 85,
      "size": "M",
      "color": "Neon",
      "qty": "2",
    },
    {
      "name": "Blazsadaer",
      "picture": "images/products/PUBG1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "qty": "1",
    },
    {
      "name": "Blazsadaer",
      "picture": "images/products/PUBG3.jpeg",
      "price": 85,
      "size": "M",
      "color": "Blue",
      "qty": "4",
    },
    {
      "name": "Blazsadaer",
      "picture": "images/products/PUBG4.jpeg",
      "price": 85,
      "size": "M",
      "color": "White",
      "qty": "3",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return single_cart_product(
            cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_qty: products_on_the_cart[index]["qty"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_pricture: products_on_the_cart[index]["pricture"],
            cart_prod_size: products_on_the_cart[index]["size"],
          );
        });
  }
}

class single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pricture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        /*leading: new Image.asset(
          cart_prod_pricture,
          //width: 80.0,
          //height: 80.0,
        ),*/
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //SIZE OF THE PRODUCT
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
//  ===========  Color of cart products  =========
                Padding(
                  padding: const EdgeInsets.fromLTRB(75.0, 8.0, 8.0, 8.0),
                  child: Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
//  =========== Product Price ==========
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\Rs $cart_prod_price",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        /*trailing: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            Text(cart_prod_qty),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            ),
          ],
        ),*/
        isThreeLine: true,
      ),
    );
  }
}
