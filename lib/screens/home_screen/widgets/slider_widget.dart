import 'package:ecommerce_app/data/model/slider_model.dart';
import 'package:flutter/material.dart';
import '../../../widget/custom_outlined_button.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget(this.sliderModel, {super.key});
  final SliderModel sliderModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.asset(
              sliderModel.imagePath!,
              height: 188,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomOutlinedButton(
                  height: 32,
                  width: 110,
                  text: 'Shop now',
                  borderColor: Colors.white,
                  radius: 8,
                  rightIcon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 17,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
