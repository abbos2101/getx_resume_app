import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:getx_resume_app/data/colors.dart';
import 'package:getx_resume_app/data/style.dart';
import 'package:getx_resume_app/page/resume/resume_model.dart';
import 'package:getx_resume_app/page/main/main_controller.dart';

class ResumePage extends StatelessWidget {
  final MainController main = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyLight,
      body: Obx(() => _body()),
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
              Container(
                width: double.infinity,
                color: MyColors.grey,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "${ResumeModel.title1(main.langIndex.value)}",
                  style: MyStyle.bold.copyWith(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: MyColors.white,
                child: Column(
                  children: [
                    _itemWork(
                      duration:
                          "${ResumeModel.item1Duration(main.langIndex.value)}",
                      firm: "${ResumeModel.item1Firm(main.langIndex.value)}",
                      firmAbout:
                          "${ResumeModel.item1About(main.langIndex.value)}",
                      firmSite:
                          "${ResumeModel.item1Site(main.langIndex.value)}",
                      profession:
                          "${ResumeModel.item1Pro(main.langIndex.value)}",
                      description:
                          "${ResumeModel.item1Desc(main.langIndex.value)}",
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration:
                          "${ResumeModel.item2Duration(main.langIndex.value)}",
                      firm: "${ResumeModel.item2Firm(main.langIndex.value)}",
                      firmAbout:
                          "${ResumeModel.item2About(main.langIndex.value)}",
                      firmSite:
                          "${ResumeModel.item2Site(main.langIndex.value)}",
                      profession:
                          "${ResumeModel.item2Pro(main.langIndex.value)}",
                      description:
                          "${ResumeModel.item2Desc(main.langIndex.value)}",
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration:
                          "${ResumeModel.item3Duration(main.langIndex.value)}",
                      firm: "${ResumeModel.item3Firm(main.langIndex.value)}",
                      firmAbout:
                          "${ResumeModel.item3About(main.langIndex.value)}",
                      firmSite:
                          "${ResumeModel.item3Site(main.langIndex.value)}",
                      profession:
                          "${ResumeModel.item3Pro(main.langIndex.value)}",
                      description:
                          "${ResumeModel.item3Desc(main.langIndex.value)}",
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration:
                          "${ResumeModel.item4Duration(main.langIndex.value)}",
                      firm: "${ResumeModel.item4Firm(main.langIndex.value)}",
                      firmAbout:
                          "${ResumeModel.item4About(main.langIndex.value)}",
                      firmSite:
                          "${ResumeModel.item4Site(main.langIndex.value)}",
                      profession:
                          "${ResumeModel.item4Pro(main.langIndex.value)}",
                      description:
                          "${ResumeModel.item4Desc(main.langIndex.value)}",
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: MyColors.grey,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "${ResumeModel.title2(main.langIndex.value)}",
                  style: MyStyle.bold.copyWith(fontSize: 20),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  color: MyColors.white,
                  child: Column(
                    children: [
                      _itemProgramming(),
                      Divider(height: 20),
                      _itemProLang(),
                      Divider(height: 20),
                      _itemLang(),
                      Divider(height: 20),
                      _itemOthers(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemWork({
    required String duration,
    required String firm,
    required String firmAbout,
    required String firmSite,
    required String profession,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                duration,
                textAlign: TextAlign.end,
                style: MyStyle.bold.copyWith(
                  fontSize: 18,
                  color: MyColors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                firm,
                style: MyStyle.bold.copyWith(fontSize: 14),
              ),
              Text(
                firmAbout,
                style: MyStyle.norm.copyWith(fontSize: 14),
              ),
              Text(
                firmSite,
                style: MyStyle.norm.copyWith(
                  fontSize: 14,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "$profession\n",
                style: MyStyle.aref.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: description,
                style: MyStyle.aref.copyWith(fontSize: 16),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _itemProgramming() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ResumeModel.titleProg(main.langIndex.value)}",
                style: MyStyle.bold.copyWith(
                  fontSize: 16,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text("Mobile", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 4.5,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(child: Text("Desktop", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 3,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(child: Text("Web", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 1.5,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemProLang() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ResumeModel.titleTec(main.langIndex.value)}",
                style: MyStyle.bold.copyWith(
                  fontSize: 16,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text("Dart(Flutter)", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 4,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                      child: Text("Java/Kotlin(Android)", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 4.5,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(child: Text("C++(Desktop)", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 3,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                      child: Text("Php(web backend)", style: MyStyle.bold)),
                  RatingBar(
                    initialRating: 2,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemLang() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ResumeModel.titleLang(main.langIndex.value)}",
                style: MyStyle.bold.copyWith(
                  fontSize: 16,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "${ResumeModel.langEng(main.langIndex.value)}",
                    style: MyStyle.bold,
                  )),
                  RatingBar(
                    initialRating: 4,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "${ResumeModel.langRu(main.langIndex.value)}",
                    style: MyStyle.bold,
                  )),
                  RatingBar(
                    initialRating: 2,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full:
                          Icon(CupertinoIcons.star_fill, color: MyColors.blue),
                      half: Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: MyColors.blue,
                      ),
                      empty: Icon(
                        CupertinoIcons.star,
                        color: MyColors.blue,
                      ),
                    ),
                    itemSize: 15,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemOthers() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ResumeModel.title3(main.langIndex.value)}",
                style: MyStyle.bold.copyWith(
                  fontSize: 16,
                  color: MyColors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ResumeModel.other1(main.langIndex.value)}",
                style: MyStyle.bold.copyWith(fontSize: 18),
              ),
              SizedBox(height: 4),
              Text(
                "${ResumeModel.other2(main.langIndex.value)}",
                style: MyStyle.norm.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
