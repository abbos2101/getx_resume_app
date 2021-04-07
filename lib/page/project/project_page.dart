import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_resume_app/data/colors.dart';
import 'package:getx_resume_app/data/style.dart';
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
    return Center(
      child: Container(
        width: 700,
        height: double.infinity,
        padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _widgetTitle("Native Android"),
              _widgetAndroid(),
              _widgetTitle("Flutter"),
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
                onPressed: () {},
                child: Text(
                  "Play market",
                  style: MyStyle.bold.copyWith(color: MyColors.blue),
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
                onPressed: () {},
                child: Text(
                  "Play market",
                  style: MyStyle.bold.copyWith(color: MyColors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
