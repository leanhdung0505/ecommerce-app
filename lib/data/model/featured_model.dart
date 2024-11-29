import '../../utils/constants/image_constant.dart';

class FeaturedModel {
  FeaturedModel(this.imagePath, this.title, this.id) {
    imagePath = imagePath ?? ImageConstant.imgNotFound;
    title = title ?? "Untitled";
    id = id ?? "";
  }
  String? imagePath;
  String? title;
  String? id;
}
