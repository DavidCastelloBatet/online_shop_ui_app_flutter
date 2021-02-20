import 'package:flutter/material.dart';
import 'package:online_shop_ui_app_flutter/models/Product.dart';
import 'package:online_shop_ui_app_flutter/screens/detail/components/color_dot.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Color'),
                  Row(
                    children: <Widget>[
                      ColorDot(
                        color: Color(0xFF356c95),
                        isSelected: true,
                      ),
                      ColorDot(color: Color(0xFFf8c078)),
                      ColorDot(color: Color(0xFFa29b9b)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: [
                    TextSpan(
                      text: 'Size\n',
                    ),
                    TextSpan(
                      text: '${product.size} cm',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
