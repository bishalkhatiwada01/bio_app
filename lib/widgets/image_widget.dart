import 'package:bioapp/utils/url_launch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15.w,
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {
                urlLaunch('linkedin');
              },
              icon: Image.asset("assets/linkedin.png"),
            ),
            IconButton(
              onPressed: () {
                urlLaunch('instagram');
              },
              icon: Image.asset("assets/instagram.png"),
            ),
            IconButton(
              onPressed: () {
                urlLaunch('facebook');
              },
              icon: Image.asset("assets/facebook.webp"),
            ),
          ],
        ),
        SizedBox(
          height: 325.h,
          width: 240.w,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Positioned(
                right: 13.w,
                bottom: 13.h,
                child: Container(
                  width: 200.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 4.w,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 25.w,
                bottom: 25.h,
                child: Image.asset(
                  'assets/pp.jpeg',
                  width: 200.w,
                  height: 300.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 259.h,
                left: 6.w,
                child: Transform.rotate(
                  angle: 45,
                  child: Container(
                    height: 20.h,
                    width: 20.w,
                    color: const Color.fromARGB(255, 226, 72, 7),
                  ),
                ),
              ),
              Positioned(
                bottom: 260.h,
                left: 0,
                child: Transform.rotate(
                  angle: 45,
                  child: Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
