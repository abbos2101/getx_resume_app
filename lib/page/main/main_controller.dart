import 'package:get/get.dart';

class MainController extends GetxController {
  var itemIndex = 0.obs;
  var langIndex = 0.obs;

  void setItem(int value) => itemIndex.value = value;

  void setLang(int value) => langIndex.value = value;
}
