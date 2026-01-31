import 'package:coffee_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE0D1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 31),
            Image.asset("assets/images/cofe.png"),
            const SizedBox(height: 88),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: const Column(
                children: [
                  Text(
                    "Stay Focused",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(163, 60),
                backgroundColor: Color(0xff967259),
                elevation: 50,
                shadowColor: Color(0xff967259),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dive In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 13),
                  SvgPicture.asset('assets/icons/right.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
