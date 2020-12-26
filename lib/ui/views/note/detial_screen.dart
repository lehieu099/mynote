import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynote/repostory/app_colors.dart';

class DetailScreen extends StatefulWidget {
  final imagePath;

  DetailScreen(this.imagePath);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              child: Stack(
                children: [

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5 + 16,
                        bottom: 20,
                        right: 32,
                        left: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Viet Nam",
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),

                        SizedBox(
                          height: 8,
                        ),

                        ///Container for data
                        Container(
                          margin: const EdgeInsets.only(right: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.lightGreenColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "5.0",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.darkTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: AppColors.lightTextColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "10 Hours",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.veryLightTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: AppColors.lightTextColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "125 Km",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.veryLightTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  ///Hero Image Container
                  Container(
                    child: Hero(
                      tag: widget.imagePath,
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ClipRRect(
                          child: SvgPicture.asset(
                            widget.imagePath,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///Back button
                  Positioned(
                    top: 40,
                    left: 24,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  ///Favorate icon
                  Positioned(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey[100], blurRadius: 8)
                          ]),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.lightRedColor,
                        size: 30,
                      ),
                    ),
                    right: 34,
                    bottom: 80,
                  ),
                ],
              ),
            ),

            ///Spacing
            SizedBox(
              height: 24,
            ),

            ///About text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "About",
                style: GoogleFonts.poppins(
                    color: AppColors.lightGreenColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(
              height: 16,
            ),

            ///About detail text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Việt Nam có 54 dân tộc anh em, mỗi dân tộc đều có những nét đặc trưng về văn hoá, phong tục tập quán và lối sống riêng. Ngành du lịch và các địa phương đã nỗ lực xây dựng được một số điểm du lịch độc đáo",
                style: GoogleFonts.poppins(
                    color: AppColors.veryLightTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),

            Spacer(),

            ///Container for contacting button
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white),
              child: Row(
                children: [
                  ///fees
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Travelling Expense",
                        style: GoogleFonts.poppins(
                            color: AppColors.veryLightTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$1000",
                        style: GoogleFonts.poppins(
                            color: AppColors.darkTextColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),

                  Spacer(),

                  ///Button
                  FlatButton(
                    child: Text(
                      "Contact",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {},
                    color: AppColors.lightGreenColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
