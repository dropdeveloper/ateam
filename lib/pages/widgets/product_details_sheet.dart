import 'package:ateam_flutter/models/product_model.dart';
import 'package:ateam_flutter/style/text_styles.dart';
import 'package:ateam_flutter/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../utils/app_utils.dart';

Future bottomProductDetailSheet(context, ProductModel product) {
  return showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${product.title}",
                style: itemNameHead1Style,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "${product.category}",
                style: itemCategorieName1Style,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16.0),
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    imageUrl: product.image!,
                    fit: BoxFit.contain,
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text('$rsSymbol ${product.price}', style: itemPriceLabel1Style),
              Wrap(
                children: [
                  RatingBar.builder(
                    initialRating:
                        double.parse(product.rating!.rate.toString()),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 16.0,
                    itemCount: 5,
                    ignoreGestures: true,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.5),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(width: 10.0),
                  Text.rich(
                    TextSpan(
                      text: getRate(product.rating!.rate),
                      style: ratingTextStyle,
                      children: [
                        TextSpan(text: ' | ', style: ratingTextStyle),
                        TextSpan(
                            text: '${product.rating!.count} ratings',
                            style: ratingTextStyle),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
