import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:store_app_clean_architecture/core/constants/constant_colors.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    this.rounded = true,
    this.loadingAnimation = true,
  });
  final String imageUrl;
  final bool rounded;
  final bool loadingAnimation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          rounded ? BorderRadius.circular(15) : BorderRadius.circular(0),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        // color: ConstantsColors.grey,

        placeholder: (context, url) {
          return loadingAnimation
              ? Container(
                  color: ConstantsColors.grey,
                  child: LoadingAnimationWidget.threeArchedCircle(
                    color: Colors.white,
                    size: 45,
                  ),
                )
              : Container();
        },
      ),
    );
  }
}