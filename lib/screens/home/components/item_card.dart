import 'package:flutter/material.dart';
import 'package:online_shop_ui_app_flutter/models/Product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          height: 180.0,
          width: 160.0,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 4,
          ),
          child: Text(
            products[0].title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          '\$234',
          style: TextStyle(color: kTextColor),
        ),
      ],
    );
  }
}
