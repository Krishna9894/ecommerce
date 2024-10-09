import 'package:e_commerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCart extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  void toggleFavorite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQtn(int index) => _cart[index].quantity++;
  decrementQtn(int index) => _cart[index].quantity--;
  totalPrice() {
    double totali = 0.0;
    for (Product element in _cart) {
      totali += element.price * element.quantity;
    }
    return totali;
  }

  static ProviderCart of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<ProviderCart>(
      context,
      listen: listen,
    );
  }
}
