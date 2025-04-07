class ProductModel {
  final String productName;
  final String productImage;
  final double productPrice;
  final double discountPrice;
  final String? logoImage;

  const ProductModel({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.discountPrice,
    this.logoImage,
  });
}
