import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                padding: EdgeInsets.only(
                  left: 157,
                  right: 151,
                  top: 25,
                  bottom: 25,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, -10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/artbycode.svg"),
                    Row(
                      children: [
                        Text(
                          "Tentang Kami",
                          style: GoogleFonts.nunito(
                            color: Color(0xff2C2C2C),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 48.0),
                        Text(
                          "Solusi kami",
                          style: GoogleFonts.nunito(
                            color: Color(0xff2C2C2C),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 48.0),
                        Text(
                          "Cara Kerja",
                          style: GoogleFonts.nunito(
                            color: Color(0xff2C2C2C),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 48.0),
                        Text(
                          "Karya Kami",
                          style: GoogleFonts.nunito(
                            color: Color(0xff2C2C2C),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 48.0),
                        SizedBox.fromSize(
                          size: Size(150, 50),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.only(
                                top: 13,
                                bottom: 12,
                                left: 17,
                                right: 14,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                width: 1,
                                color: Color(0xff1DC0AD),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Hubungi Kami",
                              style: GoogleFonts.nunito(
                                color: Color(0xff1DC0AD),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 92.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leftContent(context),
                  SizedBox(width: 136.0),
                  rightContent(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget leftContent(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(495, 354),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "Kami adalah ",
              style: GoogleFonts.montserratAlternates(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xff7F7F7F),
              ),
              children: [
                TextSpan(
                  text: "Art By Code | ABC",
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff1DC0AD),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Ayo ciptakan sesuatu yang indah dari sebuah kode",
            textDirection: TextDirection.ltr,
            style: GoogleFonts.nunito(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Color(0xff2C2C2C),
            ),
          ),
          Wrap(
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1DC0AD),
                ),
                child: Center(
                  child: Text(
                    "Mau tau lebih banyak",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget rightContent(BuildContext context) {
    return Image.asset(
      "assets/images/image_home.png",
      width: 500,
      height: 500,
    );
  }
}
