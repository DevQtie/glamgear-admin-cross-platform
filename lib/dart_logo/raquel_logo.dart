import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetLogo extends StatelessWidget {
  final String path;
  final double size;
  final bool kIsWeb;
  final bool isSvgSpecific;

  const GetLogo(
      {super.key,
      required this.path,
      required this.size,
      required this.kIsWeb,
      required this.isSvgSpecific});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? isSvgSpecific
            ? SvgPicture.asset(
                path,
                semanticsLabel: 'GlamGear Coin',
                width: size,
                height: size,
                fit: BoxFit.cover,
              )
            : Image(
                // Source: https://docs.flutter.dev/ui/assets/assets-and-images#loading-images
                width: size,
                height: size,
                image: AssetImage(
                  path,
                ),
              )
        : Image(
            // Source: https://docs.flutter.dev/ui/assets/assets-and-images#loading-images
            width: size,
            height: size,
            image: AssetImage(
              path,
            ),
          );
  }
}
