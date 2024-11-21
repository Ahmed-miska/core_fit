class ProductModel {
  final String image;
  final String title;
  final String type;
  final String price;
  final String oldPrice;
  final String discount;
  final String currency;
  final bool isFavorite;
  final bool isOffer;

  ProductModel(
      {required this.isOffer, required this.image, required this.title, required this.type, required this.price, required this.oldPrice, required this.discount, required this.currency, required this.isFavorite});
}
