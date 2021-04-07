import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_resume_app/data/colors.dart';
import 'package:getx_resume_app/data/style.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        _bodyBackground(),
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: SizedBox(
            width: Get.width * 0.6,
            height: Get.height * 0.6,
            child: Row(children: [_bodyLeft(), _bodyRight()]),
          ),
        ),
      ],
    );
  }

  Widget _bodyLeft() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.greyLight,
          boxShadow: [
            BoxShadow(
              color: MyColors.greyDark,
              blurRadius: 5,
              offset: Offset(-5, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/img_profile.jpg"),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.grey,
                      blurRadius: 10,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Abbos",
                        style: MyStyle.bold.copyWith(fontSize: 20),
                      ),
                      Text(
                        "Bobomurodov",
                        style: MyStyle.bold.copyWith(fontSize: 20),
                      ),
                      Container(
                        width: 50,
                        height: 1,
                        color: MyColors.blue,
                        margin: EdgeInsets.all(15),
                      ),
                      Text(
                        "Flutter developer",
                        style: MyStyle.sans.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                )),
            Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              height: 50,
              color: MyColors.white,
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    height: 50,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    shape: CircleBorder(),
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      size: 20,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    height: 50,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    shape: CircleBorder(),
                    child: Icon(
                      FontAwesomeIcons.telegramPlane,
                      size: 20,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    height: 50,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    shape: CircleBorder(),
                    child: Icon(
                      FontAwesomeIcons.linkedinIn,
                      size: 20,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    height: 50,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    shape: CircleBorder(),
                    child: Icon(
                      FontAwesomeIcons.githubAlt,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyRight() {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
              color: MyColors.greyLight,
              blurRadius: 5,
              offset: Offset(5, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Text(
              "ASSALOMU ALAYKUM",
              style: MyStyle.bold.copyWith(fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              """
       O'zim haqimda qisqacha...                                                
              """,
              style: MyStyle.bold.copyWith(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                """
  Toshkent Axbarot Texnalogiyalari universitetida o'qiganman. Shu kungacha bir nechta o'quv markazlarga nazorat, monitoring dasturlari tuzganman, dars ham o'tganman, mentor qobilayatim bor, bazida frilansirlik ham qilib turaman.
                 """,
                style: MyStyle.aref.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyBackground() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(color: MyColors.grey),
          ),
          Expanded(
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
