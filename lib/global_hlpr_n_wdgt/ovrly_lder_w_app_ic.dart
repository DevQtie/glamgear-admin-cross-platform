import 'package:flutter/material.dart';
import 'package:overlay_loader_with_app_icon/overlay_loader_with_app_icon.dart';

class OverlayLoaderWithAppIconHelper extends StatelessWidget {
  const OverlayLoaderWithAppIconHelper({
    super.key,
    required bool isLoading,
  }) : _isLoading = isLoading;

  final bool _isLoading;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return OverlayLoaderWithAppIcon(
      isLoading: _isLoading,
      appIcon: Image.asset(
        'assets/icons/glamgear_icon.png',
      ),
      borderRadius: 15,
      circularProgressColor: isDarkMode
          ? const Color.fromARGB(190, 255, 193, 7)
          : Colors.lightBlue,
      child: SizedBox(),
    );
  }
}
