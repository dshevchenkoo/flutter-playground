import 'package:course/model/category.dart';
import 'package:course/model/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import 'detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(),
      home: DetailScreen()
    );
  }

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                Image.asset("assets/images/user.png")
              ],
            ),
            SizedBox(height: 30),
            Text('Hey Mishca,', style: kHeadingextStyle),
            Text('Find a course you want learn', style: kSubheadingextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 16),
                  Text("Search for anything",
                    style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category", style: kTitleTextStyle,),
                Text("See all", style: kSubtitleTextSyule.copyWith(color: kBlueColor),)
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(16),
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kBlueColor,
                      image: DecorationImage(
                        image: AssetImage(
                          categories[index].image
                        ),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(categories[index].name,
                          style: kTitleTextStyle,),
                        Text("${categories[index].numOfCourses} Courses",
                        style: TextStyle(
                         color: kTextColor.withOpacity(.5)
                        ))
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),

              ),
            )

          ],
        ),
      ),
    );
  }
}
