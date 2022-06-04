import 'package:ateam_flutter/models/product_model.dart';
import 'package:ateam_flutter/providers/product_provide.dart';
import 'package:ateam_flutter/service/internet_service.dart';
import 'package:ateam_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

class InternetRepository {

 Future<List<ProductModel>> fetchProductsList(context) async {
    final state = Provider.of<ProductProvider>(context, listen: false);
    try {
      final response = await internetService.get(productUrl);
      state.addItems(response);
    } catch (e) {
      print(e.toString());
    }
    return state.items;
  }


}
