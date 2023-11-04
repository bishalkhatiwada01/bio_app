// import 'package:bioapp/models/bio_data.dart';
// import 'package:bioapp/widgets/app_bar.dart';
// import 'package:bioapp/widgets/image_widget.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: MyAppBar(title: ''),
//         body: Center(
//           child: Column(
//             children: [
//               SizedBox(height: 60),
//               Text(
//                 userBio.name,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30,
//                 ),
//               ),
//               SizedBox(height: 30),
//               const ImageWidget(),
//               SizedBox(height: 40),

//               Text(userBio.bio,
//                 style: const TextStyle(

//                   fontWeight: FontWeight.normal,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:bioapp/models/bio_data.dart';
import 'package:bioapp/widgets/app_bar.dart';
import 'package:bioapp/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: ''),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            userBio.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          const ImageWidget(),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              textAlign: TextAlign.center,
              userBio.bio,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
