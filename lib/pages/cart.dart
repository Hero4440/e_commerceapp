import 'package:flutter/material.dart';
//Imports
import 'package:com/components/cart_products.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text('Cart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total Amount:"),
                subtitle: Text("\Rs.234"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Check Out",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
