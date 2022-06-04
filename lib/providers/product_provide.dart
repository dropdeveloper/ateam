import 'package:ateam_flutter/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> items = [];

  void addItems(data) {
    var item = data.map((itemModel) {
        return ProductModel.fromJson(itemModel);
    }).toList();
    items = List<ProductModel>.from(item);
    notifyListeners();
    
  }
}
