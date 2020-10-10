import 'package:course/model/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
                image: AssetImage("assets/images/ux_big.png"),
                alignment: Alignment.topRight)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/icons/arrow-left.svg"),
                      SvgPicture.asset("assets/icons/more-vertical.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: EdgeInsets.only(
                          left: 10, top: 5, right: 20, bottom: 5),
                      child: Text('Best Seller'.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Design Thinking", style: kHeadingextStyle),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/person.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      Text("18K"),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/icons/star.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      Text("4.8")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "\$50",
                          style: kHeadingextStyle.copyWith(fontSize: 32)),
                      TextSpan(
                          text: "\$70",
                          style: TextStyle(
                              color: kTextColor.withOpacity(.5),
                              decoration: TextDecoration.lineThrough))
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ListView(
                    children: [Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course Content",
                          style: kTitleTextStyle,
                        ),
                        CourseContent('01', 5.35, 'Welcome to the course', isDone: true),
                        CourseContent('02', 5.02, 'Design Thinking - Intro', isDone: true),
                        CourseContent('03', 5.40, 'Design Thinking Procces', isDone: true),
                        CourseContent('04', 4.30, 'Perspective', isDone: true),
                      ],
                    )],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget{
  final String number;
  final double duration;
  final String title;
  final bool isDone;


  CourseContent(this.number, this.duration, this.title, {this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Text(
            number,
            style: kHeadingextStyle.copyWith(
                color: kTextColor.withOpacity(0.15)),
          ),
          SizedBox(
            width: 10,
          ),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "$duration mins\n",
                    style: TextStyle(
                        color: kTextColor.withOpacity(0.5),
                        fontSize: 18)),
                TextSpan(
                    text: title,
                    style: kSubtitleTextSyule.copyWith(
                        fontWeight: FontWeight.w600,
                        height: 1.5
                    )
                )
              ])),
          Spacer(),
          Container(
              margin: EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreenColor.withOpacity(isDone ? 1 : .5),
              ),
              child: Icon(Icons.play_arrow, color: Colors.white)
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldClipper) {
    return false;
    throw UnimplementedError();
  }
}
