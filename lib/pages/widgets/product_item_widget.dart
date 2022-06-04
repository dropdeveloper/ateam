import 'package:ateam_flutter/models/product_model.dart';
import 'package:ateam_flutter/pages/widgets/product_details_sheet.dart';
import 'package:ateam_flutter/style/text_styles.dart';
import 'package:ateam_flutter/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;
  const ProductItemWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CachedNetworkImage(
                      width: double.infinity,
                      imageUrl:
                          product.image!,
                      fit: BoxFit.contain,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: Colors.grey,),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline)))
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${product.title}", style: itemNameHeadStyle, overflow: TextOverflow.ellipsis,),
                    Text("${product.category}", style: itemCategorieNameStyle, overflow: TextOverflow.ellipsis,),
                    Text('$rsSymbol ${product.price}', style: itemPriceLabelStyle),
                    RatingBar.builder(
                      initialRating: double.parse(product.rating!.rate.toString()),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 12.0,
                      itemCount: 5,
                      ignoreGestures: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0.5),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      onRatingUpdate: (rating) {
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: (){
        bottomProductDetailSheet(context, product);
      },
    );
  }
}
