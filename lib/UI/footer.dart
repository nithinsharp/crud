

import 'package:crud/common_widget/progress_widget.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return  Container(

      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Language",
                style: getStyle(isMobile ? 18 : 25, color: Colors.orange),
              ),
                getVerticalSpace(),
              Row(
                children: [
                  SizedBox(
                    width:isMobile ?
                    MediaQuery.of(context).size.width * 0.18
                        : MediaQuery.of(context).size.width * 0.10 ,
                    child: Text(
                      "Tamil",
                      style: getStyle(isMobile ? 8 : 18),
                    ),
                  ),
                  ProgressBar(percent: 0.95,),
                ],
              ),
                getVerticalSpace(),

                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width:isMobile ?
                    MediaQuery.of(context).size.width * 0.18
                        : MediaQuery.of(context).size.width * 0.10 ,
                    child: Text(
                      "English",
                      style: getStyle(isMobile ? 8 : 18),
                    ),
                  ),
                  ProgressBar(percent: 0.85,),
                ],
              ),
                getVerticalSpace(),

              ],),

          ],
        ),
      ),
    );
  }
  getStyle(double size, {Color? color}) {
    return TextStyle(
        fontSize: size,
        color: color ?? Colors.white,
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
