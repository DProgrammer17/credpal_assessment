import 'package:credpal_assessment/domain/constants/app_assets.dart';
import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:credpal_assessment/widgets/utility_widgets/app_button.dart';
import 'package:credpal_assessment/widgets/utility_widgets/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const HomePageAppBarWidget({super.key});

  @override
  Size get preferredSize => Size.fromHeight(270.ah);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.aw, context.isMobile ? 92.ah : 30.ah, 20.aw, 42.ah),
      color: AppColors.primaryIndigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppStrings.payLaterEveryWhere,
                style: AppTextStyles.h1(context),
              ),
              7.sbW,
              Padding(
                padding: EdgeInsets.only(bottom: context.isMobile ?  13.ah : 23.ah),
                child: SvgPicture.asset(
                  AppSvgs.infoIcon,
                  height: context.isMobile ?  20.ah :40.ah,
                  width: context.isMobile ? 20.aw :40.aw,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.shoppingLimitColon,
                    style: AppTextStyles.body1Regular(context).copyWith(
                      color: AppColors.subtextBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    ' ${AppStrings.mockNairaHint}',
                    style: AppTextStyles.body1Regular(context).copyWith(
                      fontFamily: '',
                      color: AppColors.subtextBlack,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              10.sbH,
              AppButton(
                title: AppStrings.activateCredit,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
