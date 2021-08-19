import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hng_task_two/print_name.dart';
import 'package:hng_task_two/screens/input_screen.dart';

void main() {
  runApp(UserProfile());
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HNG Task Two',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xfffaf5e8),
        body: InputScreen(),
      ),
    );
  }
}
