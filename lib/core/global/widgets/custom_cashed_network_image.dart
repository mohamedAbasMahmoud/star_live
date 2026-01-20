import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/assets_data.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.fitHeight,
    this.width,
    this.height,
    this.shape,
  });

  final String imageUrl;
  final BoxFit fit;
  final double? height;
  final double? width;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.circular(5.r),
        shape: shape ?? BoxShape.rectangle,
      ),
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: fit,
        placeholder: (context, url) => Image.asset(
          AssetsData.defaultImage,
          fit: fit,
          alignment: Alignment.center,
        ),
        errorWidget: (context, url, error) => Image.asset(
          AssetsData.defaultImage,
          fit: fit,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
