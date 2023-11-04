import 'package:bioapp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // Set the initial theme to light
      darkTheme: ThemeData.dark(), // Set the dark theme
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Bio App',

      home: const HomePage(),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       theme: ThemeData.light(), // Set the initial theme to light
//       darkTheme: ThemeData.dark(), // Set the dark theme
//       themeMode: ThemeMode.system, // Use the system theme mode
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isDarkMode = false; // Variable to track dark mode state

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(
//         title: 'My App Title',
//         isDarkMode: isDarkMode, // Pass the dark mode state to the AppBar
//         toggleDarkMode: () {
//           // Function to toggle dark mode
//           setState(() {
//             isDarkMode = !isDarkMode;
//           });
//         },
//       ),
//       body: Container(
//         color: isDarkMode
//             ? Colors.black
//             : Colors.white, // Set background color based on dark mode
//         child: Center(
//           child: Text(
//             'Hello, Flutter!',
//             style: TextStyle(
//               color: isDarkMode
//                   ? Colors.white
//                   : Colors.black, // Change text color based on dark mode
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final bool isDarkMode; // Whether dark mode is enabled
//   final Function toggleDarkMode; // Function to toggle dark mode

//   MyAppBar({
//     required this.title,
//     required this.isDarkMode,
//     required this.toggleDarkMode,
//   });

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = isDarkMode ? ThemeData.dark() : ThemeData.light();

//     return AppBar(
//       title: Row(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(8.0),
//             width: 40.0,
//             height: 40.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.black,
//             ),
//             child: Center(
//               child: Text(
//                 'B',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 8.0),
//           Text(
//             'Bishal Khatiwada',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 16.0,
//             ),
//           ),
//         ],
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(
//             isDarkMode ? Icons.nightlight_round : Icons.nights_stay,
//             color: isDarkMode
//                 ? Colors.black
//                 : null, // Change icon color to black when in dark mode
//           ),
//           onPressed: () {
//             toggleDarkMode(); // Toggle dark mode
//           },
//         ),
//       ],
//       backgroundColor: theme.appBarTheme
//           .backgroundColor, // Set the app bar's background color based on the theme
//     );
//   }
// }
