import 'package:ecommerce_app/utils/constants/image_constant.dart';

class SliderModel {
  SliderModel(this.imagePath, this.id) {
    imagePath = imagePath ?? ImageConstant.imgNotFound;
    id = id ?? "";
  }
  String? imagePath;
  String? id;
}
