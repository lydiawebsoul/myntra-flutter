import 'package:flutter/material.dart';
import 'package:myntra_app/Top_picks/dresses.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "Dresses Under",
      "picture": "assets/products/dressesgrid.jpg",
      "price": "899/-",
    },
    {
      "name": "Flats Under",
      "picture": "assets/products/flatsgrid.jpg",
      "price": "999/-",
    },
    {
      "name": "Kurtas Under",
      "picture": "assets/products/kurtasgrid.jpg",
      "price": "799/-",
    },
    {
      "name": "Tops Under",
      "picture": "assets/products/topsgrid.jpg",
      "price": "599/-",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_price: product_list[index]['price'],
        );
      },
    );
  }
}

// ignore: camel_case_types
class Single_prod extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final product_name;
  // ignore: non_constant_identifier_names
  final product_picture;

  // ignore: non_constant_identifier_names
  final product_price;

  Single_prod({
    // ignore: non_constant_identifier_names
    this.product_name,
    // ignore: non_constant_identifier_names
    this.product_picture,

    // ignore: non_constant_identifier_names
    this.product_price,
  });

  @override
  _Single_prodState createState() => _Single_prodState();
}

// ignore: camel_case_types
class _Single_prodState extends State<Single_prod> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: widget.product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (context) => new Dresses(),
              ),
            ),
            child: GridTile(
                footer: Container(
                  color: Colors.white24,
                  child: ListTile(
                    title: Text(
                      widget.product_name,
                      style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      widget.product_price,
                      style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                child: Image.asset(
                  widget.product_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
