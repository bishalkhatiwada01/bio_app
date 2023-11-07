import 'package:bioapp/models/bio_data.dart';
import 'package:bioapp/utils/url_launch.dart';
import 'package:bioapp/widgets/app_bar.dart';
import 'package:bioapp/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20.h),
              Text(
                userBio.name,
                style: GoogleFonts.roboto(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              const ImageWidget(),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      "About me:",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      textAlign: TextAlign.center,
                      userBio.bio,
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "View my projects on:",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  urlLaunch('github');
                },
                child: Text(
                  'https://github.com/bishalkhatiwada01',
                  style: GoogleFonts.roboto(
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
