import 'package:flutter/material.dart';
import 'package:ti_shop/utils/constants/colors.dart';
import 'package:ti_shop/utils/constants/image_strings.dart';
import 'package:ti_shop/utils/constants/sizes.dart';

class TISocialButton extends StatelessWidget {
  const TISocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TIColors.grey), borderRadius: BorderRadius.circular(100),),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TISizes.iconMd,
              height: TISizes.iconMd,
              image: AssetImage(TIImages.google),
            ),
          ),
        ),
        const SizedBox(width: TISizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TIColors.grey), borderRadius: BorderRadius.circular(100),),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TISizes.iconMd,
              height: TISizes.iconMd,
              image: AssetImage(TIImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

