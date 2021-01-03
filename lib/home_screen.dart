import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:free_commerce/models/product.dart';
import 'package:free_commerce/my_drawer.dart';
import 'package:free_commerce/product_card.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: FutureBuilder(
            future: getProductList(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                List<Product> products = snapshot.data;
                return ListView.separated(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(products[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }

  Future<List<Product>> getProductList() async {
    /// 1. call firebase for product list
    // Access Firestore using the default Firebase app:
    var products = await FirebaseFirestore.instance
        .collection('products')
        .get()
        .then((QuerySnapshot querySnapshot) => querySnapshot.docs
            .map((doc) => Product.fromMap(doc.data()))
            .toList());
    return products;
  }
}
