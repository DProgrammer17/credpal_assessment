import 'package:credpal_assessment/domain/constants/app_assets.dart';
import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_strings.dart';
import 'package:credpal_assessment/ui/model/home_model.dart';
import 'package:credpal_assessment/ui/model/merchant_model.dart';
import 'package:credpal_assessment/ui/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final homeNotifier = NotifierProvider<HomeNotifier, HomeModel>(() {
  return HomeNotifier();
});

class HomeNotifier extends Notifier<HomeModel> {
  @override
  HomeModel build() => const HomeModel();

  var formatter = NumberFormat('#,##,000');

  void setUpProductList() => state = state.copyWith(
        productList: [
          const ProductModel(
            productName: AppStrings.nokiaPhone,
            productImage: AppImages.nokiaPhone,
            productPrice: 39780,
            discountPrice: 88000,
          ),
          const ProductModel(
            productName: AppStrings.iphoneText,
            productImage: AppImages.iphoneXImage,
            productPrice: 295999,
            discountPrice: 315000,
            logoImage: AppImages.ogaBassseyLogo,
          ),
          const ProductModel(
            productName: AppStrings.potText,
            productImage: AppImages.pressureCooker,
            productPrice: 39780,
            discountPrice: 88000,
            logoImage: AppImages.justRiteLogo,
          ),
          const ProductModel(
            productName: AppStrings.soundCoreText,
            productImage: AppImages.speakerImage,
            logoImage: AppImages.okayFonesLogo,
            productPrice: 39780,
            discountPrice: 88000,
          ),
          const ProductModel(
            productName: AppStrings.iphoneAltText,
            productImage: AppImages.iphone12,
            logoImage: AppImages.imateStoresLogo,
            productPrice: 490500,
            discountPrice: 515000,
          ),
          const ProductModel(
            productName: AppStrings.controllerText,
            productImage: AppImages.controllerImage,
            logoImage: AppImages.ogaBassseyLogo,
            productPrice: 39780,
            discountPrice: 88000,
          ),
        ],
        merchantList: [
          const MerchantModel(
            merchantName: AppStrings.justRite,
            merchantColor: AppColors.darkBlue,
            merchantImage: AppImages.justRiteLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.orile,
            merchantColor: AppColors.textBlack,
            merchantImage: AppImages.orileLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.slot,
            merchantColor: AppColors.hotRed,
            merchantImage: AppImages.slotLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.pointek,
            merchantColor: AppColors.skyBlue,
            merchantImage: AppImages.pointekLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.ogabassey,
            merchantColor: AppColors.textFieldGrey,
            merchantImage: AppImages.ogaBassseyLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.casper,
            merchantColor: AppColors.pixiePink,
            merchantImage: AppImages.casperLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.dreamWorks,
            merchantColor: AppColors.weirdPurple,
            merchantImage: AppImages.dreamworkLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.hubmart,
            merchantColor: AppColors.textBlack,
            merchantImage: AppImages.hubMartLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.justUsed,
            merchantColor: AppColors.lightBlue,
            merchantImage: AppImages.justUsedLogo,
          ),
          const MerchantModel(
            merchantName: AppStrings.justFones,
            merchantColor: AppColors.textBlack,
            merchantImage: AppImages.justFonesLogo,
          ),
        ],
      );
}
