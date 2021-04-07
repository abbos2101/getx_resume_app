import 'package:flutter/material.dart';
import 'package:getx_resume_app/data/colors.dart';

class WAppBarChild extends StatelessWidget {
  final int itemIndex;
  final int langIndex;
  final VoidCallback? onPressedAbout;
  final VoidCallback? onPressedResume;
  final VoidCallback? onPressedProject;
  final VoidCallback? onPressedUz;
  final VoidCallback? onPressedRu;
  final VoidCallback? onPressedEn;

  WAppBarChild({
    this.itemIndex = 0,
    this.langIndex = 0,
    this.onPressedAbout,
    this.onPressedResume,
    this.onPressedProject,
    this.onPressedUz,
    this.onPressedRu,
    this.onPressedEn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Bobomurodov Abbos",
          style: TextStyle(
            color: MyColors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          " / Mobile developer",
          style: TextStyle(color: MyColors.black, fontSize: 14),
        ),
        Expanded(child: SizedBox()),
        MaterialButton(
          padding: EdgeInsets.all(20),
          onPressed: onPressedAbout,
          textColor: itemIndex == 0 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("Men haqimda"),
        ),
        MaterialButton(
          padding: EdgeInsets.all(20),
          onPressed: onPressedResume,
          textColor: itemIndex == 1 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("Resume"),
        ),
        MaterialButton(
          padding: EdgeInsets.all(20),
          onPressed: onPressedProject,
          textColor: itemIndex == 2 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("Proyekt"),
        ),
        Container(
          height: 50,
          width: 2,
          color: MyColors.grey,
          margin: EdgeInsets.only(left: 10, right: 10),
        ),
        MaterialButton(
          minWidth: 40,
          padding: EdgeInsets.all(0),
          onPressed: onPressedUz,
          textColor: langIndex == 0 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("O'z"),
        ),
        MaterialButton(
          minWidth: 40,
          padding: EdgeInsets.all(0),
          onPressed: onPressedRu,
          textColor: langIndex == 1 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("Ru"),
        ),
        MaterialButton(
          minWidth: 40,
          padding: EdgeInsets.all(0),
          onPressed: onPressedEn,
          textColor: langIndex == 2 ? MyColors.blue : MyColors.black,
          hoverColor: MyColors.greyLight,
          child: Text("En"),
        ),
      ],
    );
  }
}
