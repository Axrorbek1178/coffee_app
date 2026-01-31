import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List items = [
    CartModel("assets/images/1.png", "Cappucinno with chocolate", 10.00),
    CartModel("assets/images/2.png", "Espresso with oat milk", 12.00),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 23, right: 23),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
                ),
                Text(
                  "Cart",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Delete.svg"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Items (${items.length})",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: const EdgeInsets.only(right: 13),
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Color(0xffF37E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/ochirish.svg",
                      width: 24,
                      height: 26,
                    ),
                  ),
                  key: UniqueKey(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 14,
                    ),
                    margin: const EdgeInsets.only(bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 119,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(30),
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        RoundCheckBox(
                          size: 20,
                          onTap: (select) {},
                          checkedWidget: const Icon(
                            Icons.check,
                            size: 18,
                            color: Colors.white,
                          ),
                          uncheckedColor: Colors.transparent,
                          checkedColor: Color(0xff967259),
                          borderColor: Color(0xff967259),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 12),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(items[index].image),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "US\ \$ ${items[index].price}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 11),

                            Row(
                              children: [
                                Text(
                                  "Delivery fee US \$3",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffF37E33),
                                  ),
                                ),
                                const SizedBox(width: 17),
                                Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff967259),
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.remove,
                                      size: 12,
                                      color: Color(0xff967259),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff967259),
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.add,
                                      size: 12,
                                      color: Color(0xff967259),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CartModel {
  String image;
  String name;
  double price;
  CartModel(this.image, this.name, this.price);
}
