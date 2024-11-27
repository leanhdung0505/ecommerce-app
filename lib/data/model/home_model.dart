import 'package:ecommerce_app/data/model/slider_model.dart';

import '../../utils/constants/image_constant.dart';
import 'featured_model.dart';
import 'products_model.dart';

class HomeModel {
  List<FeaturedModel> listFeatured = [
    FeaturedModel(ImageConstant.imgFashionFeature, "Fashion", "1"),
    FeaturedModel(ImageConstant.imgBeauty, "Beauty", "2"),
    FeaturedModel(ImageConstant.imgKids, "Kids", "3"),
    FeaturedModel(ImageConstant.imgMen, "Men", "4"),
    FeaturedModel(ImageConstant.imgWomen, "Fashion", "5"),
    FeaturedModel(ImageConstant.imgFashionFeature, "Fashion", "6")
  ];
  List<ProductsModel> listProduct = [
    ProductsModel(
        "1",
        200,
        100,
        50,
        "Women Printed Kurta",
        "Neque porro quisquam est qui dolorem ipsum quia",
        ImageConstant.imgDress,220,1),
    ProductsModel(
        "2",
        200,
        100,
        50,
        "HRX by Hrithik Roshan",
        "Neque porro quisquam est qui dolorem ipsum quia",
        ImageConstant.imgShoes,220,5),
    ProductsModel(
        "3",
        200,
        100,
        50,
        "HRX by Hrithik Roshan",
        "Neque porro quisquam est qui dolorem ipsum quia",
        ImageConstant.imgClock,220,4),
    ProductsModel(
        "4",
        200,
        100,
        50,
        "HRX by Hrithik Roshan",
        "Neque porro quisquam est qui dolorem ipsum quia",
        ImageConstant.imgDress,220,5),
  ];
  List<SliderModel> listSlider = [
    SliderModel(ImageConstant.imgSlider, "1"),
    SliderModel(ImageConstant.imgSlider, "2"),
    SliderModel(ImageConstant.imgSlider, "3"),
  ];
}
