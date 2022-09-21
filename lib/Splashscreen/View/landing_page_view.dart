import 'package:basureward/Classes/color_pallete_class.dart';
import 'package:basureward/Classes/curvepainter_landing_page_view.dart';
import 'package:basureward/packages.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, toolbarHeight: 0),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipPath(
              clipper: CurvePainterLandingPage(),
              child: Container(
                width: Get.width,
                height: Get.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('./assets/background/basura.png'),
                        fit: BoxFit.cover)),
              ),
            )),
            Positioned(
                bottom: 20,
                right: 50,
                child: MaterialButton(
                  color: ColorPallete.primary,
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: ColorPallete.fontSecondary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )),
            Positioned(
              bottom: 150,
              right: Get.width / 3 - 20,
              child: const Text(
                'BasuReward',
                style: TextStyle(
                    color: Color.fromARGB(255, 7, 61, 105),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
                bottom: 250,
                right: Get.width / 2 - 14,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: ColorPallete.primary,
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    Opacity(
                      opacity: 0.4,
                      child: Icon(
                        Icons.circle,
                        color: ColorPallete.primary,
                        size: 12,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
