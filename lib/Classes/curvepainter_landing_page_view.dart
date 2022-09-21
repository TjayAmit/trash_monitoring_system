import 'package:basureward/packages.dart';

class CurvePainterLandingPage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height / 1.6);

    var firstStart = Offset(size.width / 4, size.height / 1.75);
    var firstEnd = Offset(size.width / 2.7, size.height / 1.7);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.8), size.height / 1.65);
    var secondEnd = Offset(size.width, size.height / 2);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
