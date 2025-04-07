import 'package:credpal_assessment/domain/constants/app_colors.dart';
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
                  scale: 4.4,
                  //scale: context.isMobile ?  2 : 4.4,
                ),
              ),
            ),
            Positioned(
              right: context.isMobile ? 7.aw : 18.aw,
              child: Container(
                height: 15.ah,
                width: 15.aw,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.onlineGreen,
                    border: Border.all(
                      color: AppColors.neutralWhite,
                      width: context.isMobile ? 2.aw : 0,
                    )),
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
