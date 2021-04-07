import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ProjectController extends GetxController {
  var isEnabled = false.obs;
  var isPlay = false.obs;
  late Rx<VideoPlayerController> controller;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    final controller = VideoPlayerController.asset("assets/video_smartup.mp4");
    await controller.initialize();
    this.controller = controller.obs;
    isEnabled.value = true;
  }

  void play() async {
    if (!isPlay.value)
      await controller.value.play();
    else
      await controller.value.pause();
    isPlay.value = !isPlay.value;
  }
}
