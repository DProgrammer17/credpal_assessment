import 'package:credpal_assessment/ui/model/merchant_model.dart';
import 'package:credpal_assessment/ui/model/product_model.dart';

class HomeModel{
  final List<ProductModel> productList;
  final List<MerchantModel> merchantList;

  const HomeModel({
    this.productList = const [],
    this.merchantList = const [],
});

  HomeModel copyWith({
    List<ProductModel>? productList,
    List<MerchantModel>? merchantList,
}){
    return HomeModel(
      productList: productList ?? this.productList,
      merchantList: merchantList ?? this.merchantList,
    );
  }
}