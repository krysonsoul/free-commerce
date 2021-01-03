import 'package:flutter/material.dart';
import 'package:free_commerce/product_detail_screen.dart';

import 'models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /// todo: navigate to the product details
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetail(product)));
      },
      child: Card(
        child: Row(
          children: [
            Image.network(
              product.imageUrl,
              height: 150,
              width: 150,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${product.name}",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Rs ${product.price}",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
