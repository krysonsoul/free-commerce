import 'package:flutter/material.dart';
import 'package:free_commerce/models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Center(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 05.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 0.0,
                ),
                Image.network(
                  product.imageUrl,
                  height: 350,
                  width: 350,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(product.name,
                    style: TextStyle(
                      fontSize: 25,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Rs ${product.price}/-",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5.5,
                ),
                Text("Description:",
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text(product.description,
                    style: TextStyle(
                      fontSize: 25,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                //RaisedButton(
                //onPressed: () {},
                //child: const Text('Add to Cart',
                //  style: TextStyle(fontSize: 24)),
                //),
                RaisedButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.10))),
                  label: Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  color: Colors.green,
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//todo:
//1. dart class
//2. json
//3. rest api
