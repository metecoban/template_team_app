import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/shop_detail/widget/shop_tile.dart';
import 'package:client/core/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recommend = [
      {"image": Assets.images.shop.shopDetail10.path, "name": L10n.of(context)!.charcoalDetoxMask},
      {"image": Assets.images.shop.shopDetail2.path, "name": L10n.of(context)!.haircut},
      {"image": Assets.images.shop.shopDetail6.path, "name": L10n.of(context)!.shave},
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: context.paddingNormal,
              child: ShopListWidget(
                imgPath: recommend[index],
              ),
            ),
          );
        },
        childCount: recommend.length,
      ),
    );
  }
}
