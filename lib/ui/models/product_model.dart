class Product {
  String product_imagepath;
  String product_title;
  int product_price;
  bool isFavorite;

  Product({
    required this.product_imagepath,
    required this.product_title,
    required this.product_price,
    this.isFavorite = false,
  });
}
