// import 'package:flutter/material.dart';
// import 'package:mynote/ui/views/note/note_view.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NoteView(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:mynote/ui/views/note/home_screen.dart' show HomeScreens;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}
