import 'package:basureward/packages.dart';

class AppBackgroundDisplayView extends StatelessWidget {
  const AppBackgroundDisplayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: Get.height,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned.fill(
                child: SizedBox(width: Get.width, height: Get.height)),
            Positioned(
                top: 25,
                child: ClipPath(
                  clipper: CurvePainter(),
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      width: Get.width,
                      height: 140,
                      color: ColorPallete.primary,
                    ),
                  ),
                )),
            Positioned(
                top: 0,
                child: ClipPath(
                  clipper: CurvePainter(),
                  child: Container(
                    width: Get.width,
                    height: 140,
                    color: ColorPallete.primary,
                  ),
                )),
          ],
        ));
  }
}
