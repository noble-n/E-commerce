import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:ecommerce/AppUtils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.home,
      "Home",
      GlobalColors.primaryColor,
      labelStyle: TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
    TabItem(
      Icons.mail_outline_rounded,
      "Messages",
      GlobalColors.primaryColor,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    TabItem(
      Icons.shopping_bag_outlined,
      "Shop",
      GlobalColors.primaryColor,
    ),
    TabItem(
      Icons.shopping_cart_outlined,
      "Cart",
      GlobalColors.primaryColor,
    ),
    TabItem(
      Icons.more_horiz_outlined,
      "More",
      GlobalColors.primaryColor,
    ),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
   return bottomNav();
  }


  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
      barBackgroundColor: Colors.white,
      normalIconColor: GlobalColors.primaryColor,
      // barBackgroundGradient: LinearGradient(
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,
      //   colors: [
      //     Colors.blue,
      //     Colors.red,
      //   ],
      // ),
      // backgroundBoxShadow: <BoxShadow>[
      //   BoxShadow(color: Colors.black45, blurRadius: 10.0),
      // ],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}