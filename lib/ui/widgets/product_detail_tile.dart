import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:credpal_assessment/ui/model/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailTile extends ConsumerWidget {
  final String image;
  final String productName;
  final double productPrice;
  final double discountPrice;
  final Widget hoverWidget;
  const ProductDetailTile({
    super.key,
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.discountPrice,
    required this.hoverWidget,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.fromLTRB(7.aw, 6.ah, 10.aw, 15.ah),
      decoration: BoxDecoration(
          color: AppColors.neutralWhite,
          borderRadius: BorderRadius.circular(10.ar),
          boxShadow: [
            BoxShadow(
              color: AppColors.textBlack.withOpacity(0.08),
              offset: const Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ]),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.aw),
                child: Image.asset(
                  image,
                  height: 100.ah,
                  width: 112.aw,
                  fit: BoxFit.cover,
                ),
              ),
              13.sbH,
              Text(
                productName,
                style: AppTextStyles.body2Regular.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              8.sbH,
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.nairaSymbol,
                        style: AppTextStyles.body2Regular.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryBlue,
                          fontFamily: '',
                          height: 1,
                        ),
                      ),
                      2.sbW,
                      Text(
                        ref
                            .watch(homeNotifier.notifier)
                            .formatter
                            .format(productPrice),
                        style: AppTextStyles.body2Regular.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ],
                  ),
                  14.sbW,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.nairaSymbol,
                        style: AppTextStyles.body1Regular.copyWith(
                          fontFamily: '',
                          fontWeight: FontWeight.w500,
                          color: AppColors.subtextGrey,
                          height: 1,
                        ),
                      ),
                      2.sbW,
                      Text(
                        ref
                            .watch(homeNotifier.notifier)
                            .formatter
                            .format(discountPrice),
                        style: AppTextStyles.body1Regular.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.subtextGrey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 50.ah,
            width: 50.aw,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.neutralWhite,
              boxShadow: [
                BoxShadow(
                  color: AppColors.textBlack.withOpacity(0.05),
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: hoverWidget,
            ),
          ),
        ],
      ),
    );
  }
}
