import 'package:flutter/material.dart';
import 'onBoarding_1.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String Logo = "assets/images/logo.png";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding_1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 237, 253),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Logo,
                height: 250,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "GOVERNOR SINDH",
            style: GoogleFonts.montserrat(
              color: Color(0xFF199A8E),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "ROZGAR SCHEME",
            style: GoogleFonts.montserrat(
              color: Color(0xFF199A8E),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
