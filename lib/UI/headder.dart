import 'dart:ui';

import 'package:flutter/material.dart';

class HeadderImage extends StatelessWidget {
  const HeadderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Container(
      height:
      isMobile?
      MediaQuery.of(context).size.height*0.35
          :
      MediaQuery.of(context).size.height*0.60,
      width: double.infinity,
      child: Stack(
        children: [

          Container(
            height:
            isMobile?
            MediaQuery.of(context).size.height*0.30
                :
            MediaQuery.of(context).size.height*0.55,
            width: double.infinity,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage("assets/images/headder.jpg",),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.0)),
              ),
            ),
          ),
        Container(
          margin: EdgeInsets.only(left: isMobile?5:50,top:isMobile?25: 50,bottom: 50,right:isMobile?2: 50),
          height: MediaQuery.of(context).size.height*0.70,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5000)),
                  child: Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width * .20,
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:isMobile ?1 :30,),
                      Text("Nitinbabu",style: getStyle(isMobile ?12:20),),
                      SizedBox(height:isMobile ?4 : 8,),
                      Text("Ravichandran",style: getStyle(isMobile ?18:25,color: Colors.orange),),
                      SizedBox(height:isMobile ?4 : 8,),
                      Text("Flutter Developer",style: getStyle(isMobile ?8:12),),
                      SizedBox(height:isMobile ?4 : 8,),
                      Text("9344663919",style: getStyle(isMobile ?8:18),),
                      SizedBox(height: isMobile ?4 :8,),
                      Text("nithinbabu.flutterdeveloper@gmail.com",style: getStyle(isMobile ?8:18),),
                      SizedBox(height:isMobile ?4 : 8,),
                      Text("Veera pandi amman kovil street,",style: getStyle(isMobile ?8:18),),
                    ],),
                ),

              ],),
              Divider(color: Colors.orange,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("${bullet}Flutter  ",style: getStyle(isMobile ?8:12),),
                Text("${bullet}Dart  ",style: getStyle(isMobile ?8:12),),
                Text("${bullet}Sublime Merge  ",style: getStyle(isMobile ?8:12),),
                Text("${bullet}Github  ",style: getStyle(isMobile ?8:12),),

              ],)
            ],
          ),
        )
        ],
      ),
    );
  }
}
String bullet = "\u2022 ";
getStyle(double size,{Color? color}){
  return   TextStyle(
      fontSize: size,
           color: color ?? Colors.white, //font color
      letterSpacing:3, //letter spacing
      decorationStyle: TextDecorationStyle.double, //double underline//text decoration 'underline' color
      decorationThickness: 2, //decoration 'underline' thickness
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold

  );
}
