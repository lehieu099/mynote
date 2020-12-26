import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:mynote/repostory/app_colors.dart';
import 'package:mynote/ui/views/note/detial_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreState createState() => _HomeScreState();
}

class _HomeScreState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Hello"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Thông Báo'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Hướng dẫn'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cài Đặt '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Đăng xuất'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "hi, Test",
                          style: TextStyle(
                              color: AppColors.veryLightTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Text(
                          "where are you going on vacations?",
                          style: TextStyle(
                              color: AppColors.darkTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 36),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("web/favicon.png"),
                      ),
                    ),
                    right: 0,
                    top: 0,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top",
                    style: TextStyle(
                      color: AppColors.lightGreenColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "For you",
                    style: TextStyle(
                      color: AppColors.veryLightTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Hidden Gems",
                    style: TextStyle(
                      color: AppColors.veryLightTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: AppColors.veryLightTextColor,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                child: LayoutGrid(
                  columnGap: 12,
                  rowGap: 12,
                  templateColumnSizes: [
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(1),
                  ],
                  templateRowSizes: [
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(0.6),
                    FlexibleTrackSize(1),
                  ],
                  children: <Widget>[
                    getPlaceWidget("assets/5.svg").withGridPlacement(
                        rowStart: 0, columnStart: 0, rowSpan: 2),
                    getPlaceWidget("assets/3.svg").withGridPlacement(
                        rowStart: 2, columnStart: 0, rowSpan: 1),
                    getPlaceWidget("assets/2.svg").withGridPlacement(
                        rowStart: 0, columnStart: 1, rowSpan: 1),
                    getPlaceWidget("assets/4.svg").withGridPlacement(
                        rowStart: 1, columnStart: 1, rowSpan: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPlaceWidget(imagePath) {
    return GestureDetector(
      onTap: () {
        ///
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(imagePath)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.lightRedColor),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: imagePath,
              child: ClipRRect(
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Viet Nam",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Chip(
                    backgroundColor: Colors.white,
                    label: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: AppColors.lightGreenColor,
                          size: 15,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.veryLightTextColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
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
}
