import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getx_resume_app/data/colors.dart';
import 'package:getx_resume_app/data/style.dart';

class ResumePage extends StatelessWidget {
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
              Container(
                width: double.infinity,
                color: MyColors.grey,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Ish tajriba",
                  style: MyStyle.bold.copyWith(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: MyColors.white,
                child: Column(
                  children: [
                    _itemWork(
                      duration: "Sentabr 2020\nhozir",
                      firm: "TUNE Consulting",
                      firmAbout: "Bank sohasi",
                      firmSite: "tuneconsulting.net",
                      profession: "Flutter dasturchi",
                      description: """
Buyerda android dasturchi bo'lib ishga kirganman, ishxona boshlanishida flutterni start up uchun ishlatishni ko'zlashgan, shu uchun test uchun kichikroq app qilib ko'rdik. Hozir shuni ustida ishlayapmiz.

TUNE Consultingni qilgan mashhur ilovalari, Apelsin(Kapital bank), Joyda(SQB), Milliy(NBU), Ipak Yo'li Mobile(Ipak yo'li bank), InfinBank(Invest Finance bank) va boshqalar.   
                      """,
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration: "Fevral 2020\nAvgust 2020",
                      firm: "Qurilish vazirligi",
                      firmAbout: "Qurilish sohasi",
                      firmSite: "mc.uz",
                      profession: "Android dasturchi",
                      description: """
Qurilish sohasidagi ishlarni qilganmiz, qurilishdagi ishlarni telefon orqali avtomizatsiya qiladigan, xujjatlarni qog'ozda emas, elektron sayt, mobile ilovalar orqali yuritishni qilganmiz. Boshida ish juda tez keta boshlagan, play marketga ilova chiqarilgandan so'ng sekinlashib qolgan, shu sababli boshqa ishga o'tganman.   
                      """,
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration: "Sentabr 2018\nFevral 2020",
                      firm: "Samarali Ta'lim",
                      firmAbout: "Ta'lim sohasi",
                      firmSite: "",
                      profession: "Android, desktop dasturchi va o'qituvchi",
                      description: """
Samarali Ta'lim 1000 ga yaqin o'quvchisi bor, abituriyentlarni tayyorlovchi o'rtacha kattalikdagi o'quv markaz. Buyerda o'qituvchilar uchun, o'quvchilarni vazifalarini kompyuterda skaner orqali tekshirish, ota-onasiga sms yuborish, o'zlashtishni monitoring qiladigan ish qilingan. Shu bilan bir qatorda o'zim ham Fizika, Informatikadan dars o'tganman.   
                      """,
                    ),
                    Divider(height: 20),
                    _itemWork(
                      duration: "Iyun 2018\nAvgust 2018",
                      firm: "GreenWhite Solutions",
                      firmAbout: "Biznes sohasi",
                      firmSite: "greenwhite.uz",
                      profession: "Amaliyotchi(android)",
                      description: """
Bizneslar uchun avtomatlashtiruvchi mobile, web ilovalar ishlab chiqishadi. Asosan savdo-sotiq, dorixona, qo'riqlash kameralari bo'yicha ixtisoslashgan.

Taniqli mijozlaridan: Coca:Cola, Ums, Nestle, Samsung, Bayer, LiquiMoly larni misol qilib keltirish mumkin.      
                      """,
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
                  "Bilim ko'nikmalar",
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
                "Dasturlash yo'nalishlari",
                //textAlign: TextAlign.end,
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
                "Dasturlash texnalogiyalari",
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
                "Chet tili",
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
                  Expanded(child: Text("Ingliz tili", style: MyStyle.bold)),
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
                  Expanded(child: Text("Rus tili", style: MyStyle.bold)),
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
                "Qo'shimcha",
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
                "Flutter bo'yicha bilimlarim",
                style: MyStyle.bold.copyWith(fontSize: 18),
              ),
              SizedBox(height: 4),
              Text(
                "Arxitektura: BLoC/Provider/GetX\nApi: RestApi/WebSocket/Firebase\nGit: GitHub/GitLab",
                style: MyStyle.norm.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
