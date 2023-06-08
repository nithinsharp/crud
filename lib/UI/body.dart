import 'package:flutter/material.dart';

class BodyView extends StatelessWidget {
  BodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work Experience",
          style: getStyle(isMobile ? 18 : 25, color: Colors.orange),
        ),
        getVerticalSpace(),
        Text(
          experince,
          style: getStyle(isMobile ? 8 : 18),
        ),
        getVerticalSpace(),
        Text(
          "Hard Skils",
          style: getStyle(isMobile ? 18 : 25, color: Colors.orange),
        ),
        getVerticalSpace(),
        Text(
          hardSkill,
          style: getStyle(isMobile ? 8 : 18),
        ),
        getVerticalSpace(),
        Text(
          "Soft Skils",
          style: getStyle(isMobile ? 18 : 25, color: Colors.orange),
        ),
        getVerticalSpace(),
        Text(
          softSkill,
          style: getStyle(isMobile ? 8 : 18),
        ),
        getVerticalSpace(),
        Text(
          "Education",
          style: getStyle(isMobile ? 18 : 25, color: Colors.orange),
        ),
        getVerticalSpace(),
        Text(
          education,
          style: getStyle(isMobile ? 8 : 18),
        ),


      ],
    );
  }

  static String bullet = "\u2022 ";
  String experince =
      "I have one and a half years of experience in Flutter development (2022 jan to till now). I worked on three products.One is e-commerce, and another couple of apps are based on simplifying work and speeding up processes that depend on customer needs.";
  String softSkill = " $bullet Project management \n $bullet Software development \n $bullet Team building \n $bullet Agile methodologies \n $bullet Work allocation \n $bullet Fast Learning";
String hardSkill = " $bullet Languages : c, c++, Datr (pretty strong in Oops) \n $bullet Flutter framework \n $bullet REST API \n $bullet Third party libraries integration \n $bullet Local database management (drift,sqlite) \n $bullet Firebase services (messaging,notification)";
  String education = "Completed my Bachelor's degree in Electronics and Communication Engineering in 2017 at SBM College with 64.5%. Completed my Higher Secondary education in 2013 at MSP School , in stream of computer science with 70 %. I obtained my Secondary School Leaving Certificate in 2011 from MSP School with 80%";
getStyle(double size, {Color? color}) {
    return TextStyle(
        fontSize: size,
        color: color ?? Colors.black,
        //font color
        letterSpacing: 3,
        //letter spacing
        decorationStyle: TextDecorationStyle.double,
        //double underline//text decoration 'underline' color
        decorationThickness: 2,
        //decoration 'underline' thickness
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold);
  }
  getVerticalSpace(){
  return SizedBox(height: 10,);
  }
}
