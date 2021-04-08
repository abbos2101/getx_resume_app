import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_resume_app/data/colors.dart';
import 'package:getx_resume_app/data/style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'project_controller.dart';

class ProjectPage extends StatelessWidget {
  final ProjectController c = Get.put(ProjectController());
  final PageController _controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyLight,
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _widgetTitle("Native Android"),
              _widgetAndroid(),
              _widgetTitle("Flutter"),
              _widgetFlutter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetTitle(String title) {
    return Container(
      width: double.infinity,
      color: MyColors.grey,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: MyStyle.bold.copyWith(fontSize: 20),
      ),
    );
  }

  Widget _widgetAndroid() {
    return Container(
      width: double.infinity,
      color: MyColors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Smartup 5 - Мобильная торговля",
            style: MyStyle.bold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 360,
            child: PageView(
              controller: _controller,
              children: [
                Obx(
                  () => c.isEnabled.value
                      ? SizedBox(
                          width: 640,
                          height: 360,
                          child: Stack(
                            children: [
                              SizedBox(
                                width: 640,
                                height: 360,
                                child: VideoPlayer(c.controller.value),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                child: MaterialButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: c.play,
                                  minWidth: double.infinity,
                                  height: double.infinity,
                                  child: c.isPlay.value
                                      ? null
                                      : Icon(
                                          CupertinoIcons.play_circle,
                                          color: MyColors.white,
                                          size: 50,
                                        ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(width: 200, height: 200),
                ),
                Image.asset("assets/img_sm1.webp"),
                Image.asset("assets/img_sm2.webp"),
                Image.asset("assets/img_sm3.webp"),
                Image.asset("assets/img_sm4.webp"),
                Image.asset("assets/img_sm5.webp"),
                Image.asset("assets/img_sm6.webp"),
                Image.asset("assets/img_sm7.webp"),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              MaterialButton(
                minWidth: 70,
                height: 70,
                padding: EdgeInsets.all(0),
                shape: CircleBorder(),
                onPressed: () {
                  launch(
                    "https://play.google.com/store/apps/details?id=uz.greenwhite.smartup5_trade",
                  );
                },
                child: Icon(
                  FontAwesomeIcons.googlePlay,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
          Divider(height: 20),
          Text(
            "Qurilish Nazorati",
            style: MyStyle.bold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 360,
            child: PageView(
              controller: _controller,
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img_in1.webp"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img_in2.webp"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img_in3.webp"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img_in4.webp"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              MaterialButton(
                minWidth: 70,
                height: 70,
                padding: EdgeInsets.all(0),
                shape: CircleBorder(),
                onPressed: () {
                  launch(
                    "https://play.google.com/store/apps/details?id=net.city.qurulishinspektor",
                  );
                },
                child: Icon(
                  FontAwesomeIcons.googlePlay,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _widgetFlutter() {
    return Container(
      width: double.infinity,
      color: MyColors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flowers Tashkent",
            style: MyStyle.bold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 360,
            child: PageView(
              controller: _controller,
              children: [
                Image.asset("assets/img_fl1.jpg"),
                Image.asset("assets/img_fl2.jpg"),
                Image.asset("assets/img_fl3.jpg"),
                Image.asset("assets/img_fl4.jpg"),
                Image.asset("assets/img_fl5.jpg"),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              MaterialButton(
                minWidth: 70,
                height: 70,
                padding: EdgeInsets.all(0),
                shape: CircleBorder(),
                onPressed: () {},
                child: Icon(
                  FontAwesomeIcons.download,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
          Divider(height: 20),
          Text(
            "Ma'no",
            style: MyStyle.bold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 360,
            child: PageView(
              controller: _controller,
              children: [
                Image.asset("assets/img_mn1.jpg"),
                Image.asset("assets/img_mn2.jpg"),
                Image.asset("assets/img_mn3.jpg"),
                Image.asset("assets/img_mn4.jpg"),
                Image.asset("assets/img_mn5.jpg"),
                Image.asset("assets/img_mn6.jpg"),
                Image.asset("assets/img_mn7.jpg"),
                Image.asset("assets/img_mn8.jpg"),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              MaterialButton(
                minWidth: 70,
                height: 70,
                padding: EdgeInsets.all(0),
                shape: CircleBorder(),
                onPressed: () {},
                child: Icon(
                  FontAwesomeIcons.download,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
