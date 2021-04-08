import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_resume_app/page/main/main_model.dart';
import 'main_controller.dart';
import 'widget/w_appbar.dart';
import 'package:getx_resume_app/data/colors.dart';
import '../about/about_page.dart';
import '../contact/contact_page.dart';
import '../project/project_page.dart';
import '../resume/resume_page.dart';

class MainPage extends StatelessWidget {
  final MainController c = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (MediaQuery.of(context).size.width > 800)
        return Scaffold(
          backgroundColor: MyColors.white,
          appBar: _appBar(),
          body: _body(),
        );
      return Scaffold(
        body: Column(
          children: [
            WAppBarChild(
              langIndex: c.langIndex.value,
              itemIndex: c.itemIndex.value,
              titleAbout: MainModel.titleAbout(c.langIndex.value),
              titleResume: MainModel.titleResume(c.langIndex.value),
              titleProject: MainModel.titleProject(c.langIndex.value),
              onPressedAbout: () => c.setItem(0),
              onPressedResume: () => c.setItem(1),
              onPressedProject: () => c.setItem(2),
              onPressedUz: () => c.setLang(0),
              onPressedRu: () => c.setLang(1),
              onPressedEn: () => c.setLang(2),
            ),
            Expanded(child: _body()),
          ],
        ),
      );
    });
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: MyColors.white,
      title: WAppBarChild(
        langIndex: c.langIndex.value,
        itemIndex: c.itemIndex.value,
        titleAbout: MainModel.titleAbout(c.langIndex.value),
        titleResume: MainModel.titleResume(c.langIndex.value),
        titleProject: MainModel.titleProject(c.langIndex.value),
        onPressedAbout: () => c.setItem(0),
        onPressedResume: () => c.setItem(1),
        onPressedProject: () => c.setItem(2),
        onPressedUz: () => c.setLang(0),
        onPressedRu: () => c.setLang(1),
        onPressedEn: () => c.setLang(2),
      ),
    );
  }

  Widget _body() {
    switch (c.itemIndex.value) {
      case 0:
        return AboutPage();
      case 1:
        return ResumePage();
      case 2:
        return ProjectPage();
      default:
        return Center(child: Text("Xatolik sodir bo'ldi:("));
    }
  }
}
