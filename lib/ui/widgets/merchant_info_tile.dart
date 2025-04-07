import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:credpal_assessment/widgets/utility_widgets/layout_helper.dart';
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
                  scale: context.isMobile ?  2 : 4.4,
                ),
              ),
            ),
          ],
        ),
        8.sbH,
        Text(
          merchantName,
          style: AppTextStyles.body1Regular(context).copyWith(
            fontWeight: FontWeight.w500,
            fontSize: !context.isMobile ? 4.asp : null,
          ),
        ),
      ],
    );
  }
}
