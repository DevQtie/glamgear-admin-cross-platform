import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScrollerHelper extends StatelessWidget {
  final double offset;
  final bool isDown;
  final ScrollController scrollController;
  const ButtonScrollerHelper(
      {super.key, required this.offset, required this.isDown, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return isDown
        ? FloatingActionButton(
            onPressed: () {
              scrollController.animateTo(
                  offset, //scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            child: Icon(CupertinoIcons.up_arrow),
          )
        : FloatingActionButton(
            onPressed: () {
              scrollController.animateTo(
                  offset, //scrollController.position.minScrollExtent,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            child: Icon(CupertinoIcons.arrow_down),
          );
  }
}
