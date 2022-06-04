import 'package:ateam_flutter/models/product_model.dart';
import 'package:ateam_flutter/pages/widgets/product_item_widget.dart';
import 'package:ateam_flutter/service/internet_repository.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
        future: InternetRepository().fetchProductsList(context),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              return GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  itemBuilder: (context, index) {
                    return ProductItemWidget(product: snapshot.data![index]);
                  });

            default:
              return Center(
                child:  Text('${snapshot.error}'),
              );
          }
        });
  }
}
