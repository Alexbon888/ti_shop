import 'package:flutter/material.dart';
import 'package:ti_shop/utils/constants/sizes.dart';

class TISpacingStyle {
  TISpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TISizes.appBarHeight,
    left: TISizes.defaultSpace,
    bottom: TISizes.defaultSpace,
    right: TISizes.defaultSpace,
  );
}