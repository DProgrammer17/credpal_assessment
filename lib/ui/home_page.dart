import 'package:credpal_assessment/domain/constants/app_assets.dart';
import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/domain/constants/app_textstyles.dart';
import 'package:credpal_assessment/domain/extensions/widget_extensions.dart';
import 'package:credpal_assessment/ui/model/home_notifier.dart';
import 'package:credpal_assessment/ui/widgets/home_appbar_widget.dart';
import 'package:credpal_assessment/ui/widgets/merchant_info_tile.dart';
import 'package:credpal_assessment/ui/widgets/product_slide_view.dart';
import 'package:credpal_assessment/widgets/page_widgets/app_scaffold.dart';
import 'package:credpal_assessment/widgets/utility_widgets/app_text_field.dart';
import 'package:credpal_assessment/widgets/utility_widgets/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeNotifier.notifier).setUpProductList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      appBar: const HomePageAppBarWidget(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            18.sbH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.aw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppConstants.deviceWidth * 0.75,
                    child: AppTextfield(
                      height: context.isMobile ? 50.ah : 60.ah,
                      horizontalPadding: 0,
                      prefixIcon: SizedBox(
                        height: 10.ah,
                        width: 10.aw,
                        child: Image.asset(
                          AppImages.searchIcon,
                          scale: 2.5,
                        ),
                      ),
                      hintText: AppStrings.searchProductHint,
                      hintStyle: AppTextStyles.body1Regular(context).copyWith(
                        fontSize: !context.isMobile ? 5.asp : null,
                        color: AppColors.subtextGrey,
                      ),
                      style: AppTextStyles.body1Regular(context).copyWith(
                        height: 1.4,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.ah),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(11.ar),
                    decoration: BoxDecoration(
                      color: AppColors.neutralGrey,
                      borderRadius: BorderRadius.circular(10.ar),
                    ),
                    child: SvgPicture.asset(AppSvgs.scanIcon),
                  ),
                ],
              ),
            ),
            20.sbH,
            SizedBox(
              height: AppConstants.deviceHeight * 0.41,
              child: const ProductSlideView(),
            ),
            33.sbH,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.aw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.featuredMerchants,
                    style: AppTextStyles.h3(context).copyWith(
                      fontSize: !context.isMobile ? 10.asp : null,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    AppStrings.viewAll,
                    style: AppTextStyles.body1Regular(context).copyWith(
                      fontSize: !context.isMobile ? 6.asp : null,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryBlue,
                    ),
                  ),
                ],
              ),
            ),
           context.isMobile ?  16.sbH : 33.sbH,
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                ref.watch(homeNotifier).merchantList.length,
                (index) => Padding(
                  padding: EdgeInsets.fromLTRB(15.aw, 20.ah, 15.aw, 20.ah),
                  child: MerchantInfoTile(
                    merchantName: ref
                        .watch(homeNotifier)
                        .merchantList
                        .elementAt(index)
                        .merchantName,
                    merchantImage: ref
                        .watch(homeNotifier)
                        .merchantList
                        .elementAt(index)
                        .merchantImage,
                    tileColor: ref
                        .watch(homeNotifier)
                        .merchantList
                        .elementAt(index)
                        .merchantColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
