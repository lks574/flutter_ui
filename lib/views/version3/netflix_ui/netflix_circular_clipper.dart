import 'package:flutter/material.dart';

class CircularClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0.0, size.height - 50)
      ..quadraticBezierTo(size.width / 4, size.height, size.width / 2, size.height,)
      ..quadraticBezierTo(size.width - size.width/4, size.height, size.width, size.height - 50,)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


@immutable
class ClipShadowPath extends StatelessWidget {

  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  ClipShadowPath({
    @required this.shadow,
    @required this.clipper,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowShadowPainter(
        shadow: this.shadow,
        clipper: this.clipper,
      ),
      child: ClipPath(
        child: child,
        clipper: this.clipper,
      ),
    );
  }
}


class _ClipShadowShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({
    @required this.shadow,
    @required this.clipper,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }


}


