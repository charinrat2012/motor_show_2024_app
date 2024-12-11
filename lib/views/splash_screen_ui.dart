// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motor_show_2024_project/views/introduction_screen_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 108, 15),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Motor Show 2024',
                style: GoogleFonts.bangers(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: MediaQuery.of(context).size.height * 0.045,
                ),
              ),
              Text(
                'DTI SAU 2024',
                style: GoogleFonts.Kanit(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CircularProgressIndicator(
                color: Color.fromARGB(255, 255, 255, 255),
                
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Text(
                'Create by Charinrat Sittiprasong',
                style: GoogleFonts.oswald(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
