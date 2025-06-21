import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class CustomDropDownStyle {
  static CustomDropdownDecoration customDropdownSearchDecorationClass(
      BuildContext context, bool isDarkMode) {
    final ThemeData theme = Theme.of(context);
    return CustomDropdownDecoration(
      expandedFillColor:
          isDarkMode ? Colors.grey.shade900 : Colors.grey.shade300,
      closedBorderRadius: BorderRadius.circular(4),
      expandedBorderRadius: BorderRadius.circular(4),
      closedFillColor: Colors.transparent,
      headerStyle: theme.textTheme.bodySmall!.copyWith(),
      noResultFoundStyle: theme.textTheme.bodyMedium!.copyWith(),
      errorStyle: theme.textTheme.bodyMedium!.copyWith(),
      hintStyle: theme.textTheme.bodySmall!.copyWith(),
      listItemStyle: theme.textTheme.bodySmall!.copyWith(),
      listItemDecoration: ListItemDecoration(
        selectedColor: Colors.transparent,
      ),
      searchFieldDecoration: SearchFieldDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: isDarkMode
                  ? Color.fromARGB(190, 255, 193, 7)
                  : Colors.lightBlue),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: isDarkMode
                  ? Color.fromARGB(190, 255, 193, 7)
                  : Colors.lightBlue),
          borderRadius: BorderRadius.circular(4),
        ),
        fillColor: isDarkMode
            ? Colors.grey.shade800.withValues(alpha: 0.75)
            : Colors.white70,
        textStyle: theme.textTheme.bodySmall!.copyWith(),
      ),
    );
  }
}
