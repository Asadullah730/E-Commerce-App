import 'package:ecommerce_app/ui/models/product_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductModel extends Model {
  final List<Product> _products = List.generate(11, (index) {
    List<String> titles = [
      'Bed',
      'T Shirt',
      'Laptop',
      'Mobile Phone',
      'Glasses',
      'Shoes',
      'Charger',
      'Bags',
      'MicroSoft Surface',
      'Corolla Car',
      'MicroSoft Surface',
    ];
    List<int> prices = [ 4000,5000,6000,7000,8000,3000, 9500, 2000,5000, 9999, 9000];
    List<String> images = [
      'assets/image/i1.jpeg',
      'assets/image/slider/T shirt.jpeg',
      'assets/image/laptop.avif',
      'assets/image/phone.jpeg',
      'assets/image/glasses.jpeg',
      'assets/image/shoes.jpeg',
      'assets/image/i1.webp',
      'assets/image/bag.jpeg',
      'assets/image/slider/laptop.jpeg',
      'assets/image/slider/car.avif',
      'assets/image/slider/laptop2.jpeg'
    ];

    return Product(
      product_imagepath: images[index],
      product_title: titles[index],
      product_price: prices[index],
    );
  });

  List<Product> get products => _products;

  void changeFavoriteStatus (int index){
    _products[index].isFavorite= !_products[index].isFavorite;
    notifyListeners();
  }
}
