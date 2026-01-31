import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedTipIndex = 0;
  List tip = ["White Chocolate", "Milk Chocolate", "Dark Chocolate"];
  int counter = 0;
  void qoshish() {
    setState(() {
      counter++;
    });
  }

  void kamaytirish() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 40, 13, 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Rectangle 24.png"),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 11,
                              right: 11,
                              top: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: SvgPicture.asset(
                                      'assets/icons/Left.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border, size: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(27, 25, 27, 18),
                            width: MediaQuery.of(context).size.width,
                            height: 123,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black.withAlpha(70),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Espresso",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "with chocolate",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white.withAlpha(204),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Star.png"),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.8",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(width: 7),
                                        Text(
                                          "(6,098)",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white.withAlpha(204),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/coffee.svg",
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              "Coffee",
                                              style: TextStyle(
                                                color: Color(0xffDDDDDD),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 30),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/chocolate.svg",
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              "Chocolate",
                                              style: TextStyle(
                                                color: Color(0xffDDDDDD),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Medium Roasted",
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tincidunt et ullamcorper eu, vivamus semper commodo",
                      style: TextStyle(
                        height: 1.83,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "Choice of Chocolate",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 32,
                      child: ListView.builder(
                        itemCount: tip.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTipIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(right: 15),
                              width: 125,
                              height: 32,
                              decoration: BoxDecoration(
                                color: index == selectedTipIndex
                                    ? Color(0xff967259)
                                    : Colors.transparent,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff967259),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                tip[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: index == selectedTipIndex
                                      ? Colors.white
                                      : Color(0xff777777),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Quantity",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                            fixedSize: Size(35, 35),
                            backgroundColor: Color(0xff967259),
                          ),
                          onPressed: () {
                            qoshish();
                          },
                          icon: Icon(Icons.remove, color: Colors.white),
                        ),
                        const SizedBox(width: 26),
                        Text(
                          "$counter",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 26),
                        IconButton(
                          style: IconButton.styleFrom(
                            fixedSize: Size(35, 35),
                            backgroundColor: Color(0xff967259),
                          ),
                          onPressed: () {
                            kamaytirish();
                          },
                          icon: Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 11),
        width: MediaQuery.of(context).size.width,
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777777),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff967259),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "4.20",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff444444),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 190,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff967259),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
