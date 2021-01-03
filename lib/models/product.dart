// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

// Product productFromMap(String str) => Product.fromMap(json.decode(str));
//
// String productToMap(Product data) => json.encode(data.toMap());

class Product {
  Product({
    this.name,
    this.price,
    this.description,
    this.imageUrl,
  });

  final String name;
  final num price;
  final String description;
  final String imageUrl;

  Product copyWith({
    String name,
    num price,
    String description,
    String imageUrl,
  }) =>
      Product(
        name: name ?? this.name,
        price: price ?? this.price,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        name: json["name"] == null ? null : json["name"],
        price: json["price"] == null ? null : json["price"],
        description: json["description"] == null ? null : json["description"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
      );

  // sdfsd() {
  //   if (name == null) {
  //     return null;
  //   } else {
  //     return name;
  //   }
  // }

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "price": price == null ? null : price,
        "description": description == null ? null : description,
        "imageUrl": imageUrl == null ? null : imageUrl,
      };
}
