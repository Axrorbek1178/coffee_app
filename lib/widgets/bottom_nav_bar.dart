import 'package:coffee_app/screens/cart_screen.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPagesIndex = 0;

  List _pages = [
    HomeScreen(),
    Center(child: Text("FavoriteScreen")),
    CartScreen(),
    Center(child: Text("Notification Screen")),
    Center(child: Text("Profile Screen")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPagesIndex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(300),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedPagesIndex,
            onTap: (value) {
              setState(() {
                selectedPagesIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Home.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Heart.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Cart.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Notification.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Profile.svg'),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
