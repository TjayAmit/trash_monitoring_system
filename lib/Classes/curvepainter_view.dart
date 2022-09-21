import 'package:basureward/packages.dart';

class CurvePainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height - 50);

    var firstStart = Offset(size.width / 3.25, size.height - 120);
    var firstEnd = Offset(size.width / 2.2, size.height - 70.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - size.width / 3, size.height);
    var secondEnd = Offset(size.width, size.height - 8);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
