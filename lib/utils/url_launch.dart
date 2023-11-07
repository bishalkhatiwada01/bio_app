import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse("https://github.com/bishalkhatiwada01");

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }

Future<void> urlLaunch(String Id) async {
  final url = getUrl(Id);
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

String getUrl(String Id) {
  switch (Id) {
    case "instagram":
      return "https://www.instagram.com/bishal_khatiwada1/";
    case "facebook":
      return "https://www.facebook.com/bishalkhatiwada.bishal";
    case "github":
      return 'https://github.com/bishalkhatiwada01';
    case "linkedin":
      return 'https://www.linkedin.com/in/bishal-khatiwada-755ab5208/';
    default:
      return '';
  }
}
