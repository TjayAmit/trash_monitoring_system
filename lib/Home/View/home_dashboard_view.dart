import 'package:basureward/Classes/app_background_display2_view.dart';
import 'package:basureward/VideoPlayer/View/basureward_video_dashboard_view.dart';
import 'package:basureward/packages.dart';

class HomeDashboardView extends GetView<UserController> {
  const HomeDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(toolbarHeight: 0, elevation: 0),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Report'),
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        body: Stack(
          children: [
            const Positioned.fill(top: 0, child: AppBackgroundDisplayView2()),
            Positioned(
                top: 0,
                right: 10,
                child: SizedBox(
                  width: Get.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 10),
                      Badge(
                        badgeContent: const Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Icon(
                          Icons.notifications_none_rounded,
                          color: ColorPallete.fontprimary,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: ColorPallete.primary,
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: 90,
                left: Get.width / 2 - (Get.width * 0.89) / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Earth is our home',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        width: Get.width * 0.89,
                        height: 180,
                        child: const BasuRewardVideoDashboard(),
                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 40,
                child: SizedBox(
                  width: Get.width,
                  height: Get.height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'Schedule and Time',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Get.width,
                        height: Get.height * 0.47,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (_, index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10),
                                  child: ScheduleView(schedule: Schedule()),
                                )),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
