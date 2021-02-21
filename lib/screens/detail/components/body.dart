import 'package:flutter/material.dart';
import 'package:online_shop_ui_app_flutter/constants.dart';
import 'package:online_shop_ui_app_flutter/models/Product.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/add_to_card.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/color_and_size.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/counter_with_fav_btn.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/description.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  //height: 500.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      AddToCard(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
