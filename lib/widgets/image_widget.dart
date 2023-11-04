import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                Icons.facebook_rounded,
              ),
              Icon(
                Icons.facebook_rounded,
              ),
              Icon(
                Icons.facebook_rounded,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Stack(children: [
            Container(
              height: 340,
              width: 230,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 220,
                    height: 330,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 11,
                    right: 11,
                    child: Image.asset(
                      'assets/pp.jpeg',
                      width: 230,
                      height: 340,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
