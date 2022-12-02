import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/product.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: textTheme().bodyText1,
        ),
        const SizedBox(height: 4.0),
        Text(' ${product.address} • ${product.publishedAt} '),
        const SizedBox(height: 4.0),
        Text(
          '${numberFormat(product.price, '원')}',
          style: textTheme().headline2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible: product.commentsCount > 0,
              child: _buildIcons(
                  product.commentsCount, CupertinoIcons.hand_thumbsup),
            ),
            const SizedBox(
              width: 8,
            ),
            Visibility(
              visible: product.heartCount > 0,
              child: _buildIcons(product.commentsCount, CupertinoIcons.heart),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 14.0,
        ),
        const SizedBox(
          width: 4,
        ),
        Text("$count"),
      ],
    );
  }

  String numberFormat(String price, String won) {
    final formatter = NumberFormat('#,### ${won}');
    return formatter.format(int.parse(price));
  }
}
