import 'package:credpal_assessment/domain/constants/app_assets.dart';
import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:credpal_assessment/ui/model/home_notifier.dart';
import 'package:credpal_assessment/ui/widgets/product_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductSlideView extends ConsumerWidget {
  const ProductSlideView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.primaryIndigo,
      padding: EdgeInsets.symmetric(vertical: 15.ah, horizontal: 21.aw),
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        crossAxisSpacing: 26.ah,
        mainAxisSpacing: 20.aw,
        children: List.generate(
          ref.watch(homeNotifier).productList.length,
          (index) => ProductDetailTile(
            image: ref
                .watch(homeNotifier)
                .productList
                .elementAt(index)
                .productImage,
            productName: ref
                .watch(homeNotifier)
                .productList
                .elementAt(index)
                .productName,
            productPrice: ref
                .watch(homeNotifier)
                .productList
                .elementAt(index)
                .productPrice,
            discountPrice: ref
                .watch(homeNotifier)
                .productList
                .elementAt(index)
                .discountPrice,
            hoverWidget: index == 0
                ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.pay,
                  style: AppTextStyles.body1Regular.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.subtextGrey,
                  ),
                ),
                2.sbH,
                Text(
                  '40${AppStrings.percentSymbol}',
                  style: AppTextStyles.body1Regular.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryBlue,
                  ),
                ),
              ],
            )
                : Image.asset(
                    ref
                        .watch(homeNotifier)
                        .productList
                        .elementAt(index)
                        .logoImage!,
                    scale: 4,
                  ),
          ),
        ),
      ),
    );
  }
}
