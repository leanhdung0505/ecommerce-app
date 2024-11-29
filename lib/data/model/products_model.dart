import '../../utils/constants/image_constant.dart';

class ProductsModel {
  ProductsModel(this.id, this.originalPrice, this.price, this.saleOff,
      this.name, this.description,this.imagePath,this.numberRate,this.rate) {
    id = id ?? "";
    imagePath = imagePath ?? ImageConstant.imgNotFound;
    price = price ?? 100;
    originalPrice = originalPrice ?? 200;
    saleOff = saleOff ?? 50;
    name = name ?? "Untitled";
    rate = rate ?? 5;
    numberRate = numberRate ?? 2020;
    description = description ?? "No description";
  }
  String? id;
  String? imagePath;
  double? price;
  double? originalPrice;
  double? saleOff;
  String? name;
  double? numberRate;
  String? description;
  double? rate;
}
