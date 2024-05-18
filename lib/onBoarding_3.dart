import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gov_rozgar/onBoarding_4.dart';

class OnBoarding_3 extends StatefulWidget {
  const OnBoarding_3({super.key});

  @override
  State<OnBoarding_3> createState() => _OnBoarding_3State();
}

class _OnBoarding_3State extends State<OnBoarding_3> {
  String Zafar = "assets/images/zafarabbas.png";
  String load1 = "assets/images/Rectangle 949.png";
  String load2 = "assets/images/Rectangle 952.png";
  String load3 = "assets/images/Rectangle 951.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF199A8E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Zafar,
                height: 430,
                width: 311,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            height: 226,
            width: 321,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color.fromARGB(255, 233, 237, 253),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MR. ZAFAR ABBAS",
                  style: GoogleFonts.inter(
                    color: Color(0xFF199A8E),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "FOUNDER OF JDC",
                  style: GoogleFonts.inter(
                    color: Color(0xFF101623),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(load1),
                        Image.asset(load2),
                        Image.asset(load3),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF199A8E),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnBoarding_4()),
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
