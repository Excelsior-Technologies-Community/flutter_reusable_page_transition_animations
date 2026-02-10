import 'package:flutter/material.dart';

enum PageTransitionType {
  fade,
  slideRight,
  slideLeft,
  slideUp,
  slideDown,
  scale,
  rotate,
  scaleFade,
  slideFade,
  size,
  flipX,
  flipY,
}

class PageTransition {
  static Route createRoute(
    Widget page, {
    PageTransitionType type = PageTransitionType.slideRight,
    Duration duration = const Duration(milliseconds: 350),
    Curve curve = Curves.easeInOut,
  }) {
    return PageRouteBuilder(
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        switch (type) {
          case PageTransitionType.fade:
            return FadeTransition(opacity: curvedAnimation, child: child);

          case PageTransitionType.slideLeft:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );

          case PageTransitionType.slideRight:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );

          case PageTransitionType.slideUp:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );

          case PageTransitionType.slideDown:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );

          case PageTransitionType.scale:
            return ScaleTransition(scale: curvedAnimation, child: child);

          case PageTransitionType.rotate:
            return RotationTransition(turns: curvedAnimation, child: child);

          case PageTransitionType.scaleFade:
            return FadeTransition(
              opacity: curvedAnimation,
              child: ScaleTransition(scale: curvedAnimation, child: child),
            );

          case PageTransitionType.slideFade:
            return FadeTransition(
              opacity: curvedAnimation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.2, 0),
                  end: Offset.zero,
                ).animate(curvedAnimation),
                child: child,
              ),
            );

          case PageTransitionType.size:
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(sizeFactor: curvedAnimation, child: child),
            );

          case PageTransitionType.flipX:
            return AnimatedBuilder(
              animation: curvedAnimation,
              child: child,
              builder: (context, child) {
                final value = curvedAnimation.value;
                final angle = (1 - value) * (3.1416 / 2);
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(angle),
                  child: child,
                );
              },
            );

          case PageTransitionType.flipY:
            return AnimatedBuilder(
              animation: curvedAnimation,
              child: child,
              builder: (context, child) {
                final value = curvedAnimation.value;
                final angle = (1 - value) * (3.1416 / 2);
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(angle),
                  child: child,
                );
              },
            );
        }
      },
    );
  }
}
