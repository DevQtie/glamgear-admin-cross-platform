import 'package:flutter/material.dart';

class WidgetShakerHelper2 extends StatefulWidget {  // reserved
  final bool shouldShake;
  final Widget child;

  const WidgetShakerHelper2({
    super.key,
    required this.shouldShake,
    required this.child,
  });

  @override
  State<WidgetShakerHelper2> createState() => _WidgetShakerHelper2State();
}

class _WidgetShakerHelper2State extends State<WidgetShakerHelper2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    _animation = Tween<double>(begin: 0.0, end: 10.0)
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    if (widget.shouldShake) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      transform: Matrix4.translationValues(_animation.value, 0.0, 0.0),
      child: widget.child,
    );
  }
}