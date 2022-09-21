import 'package:basureward/VideoPlayer/View/video_player_widget.dart';
import 'package:basureward/packages.dart';

class BasuRewardVideoDashboard extends StatefulWidget {
  const BasuRewardVideoDashboard({Key? key}) : super(key: key);

  @override
  State<BasuRewardVideoDashboard> createState() =>
      _BasuRewardVideoDashboardState();
}

class _BasuRewardVideoDashboardState extends State<BasuRewardVideoDashboard> {
  final asset = 'assets/video/basureward_sample.mp4';

  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller!.play());
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
