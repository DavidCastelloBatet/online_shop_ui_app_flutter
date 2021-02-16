import 'package:flutter/material.dart';
import 'package:online_shop_ui_app_flutter/constants.dart';
import 'package:online_shop_ui_app_flutter/models/Product.dart';
import 'package:online_shop_ui_app_flutter/screens/home/components/categories.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        ItemCard(),
      ],
    );
  }
}
