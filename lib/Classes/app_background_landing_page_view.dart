import 'package:basureward/packages.dart';

class AppBackgroundLandingPage extends StatelessWidget {
  const AppBackgroundLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          Positioned.fill(
              child: SizedBox(width: Get.width, height: Get.height)),
        ],
      ),
    );
  }
}
