import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class MerchantInfoTile extends StatelessWidget {
  final String merchantName;
  final String merchantImage;
  final Color tileColor;
  const MerchantInfoTile({
    super.key,
    required this.merchantName,
    required this.merchantImage,
    required this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              height: 60.ah,
              width: 60.aw,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: tileColor,
              ),
              child: Center(
                child: Image.asset(
                  merchantImage,
                  scale: 2,
                ),
              ),
            ),
          ],
        ),
        8.sbH,
        Text(
          merchantName,
          style: AppTextStyles.body1Regular.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
