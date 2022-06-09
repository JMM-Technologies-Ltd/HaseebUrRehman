import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/menu_page.dart';
import '../pages/more_page.dart';
import '../pages/offer_page.dart';
import '../pages/profile_page.dart';


class BottomNavigation extends StatefulWidget {


  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int currentTab = 5;
  final List<Widget> screens =[
    HomePage(),
    OfferPage(),
    MenuPage(),
    ProfilePage(),
    MorePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTab = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            minWidth: 40.0,
            onPressed: (){
              setState(() {
                currentScreen = HomePage();
                currentTab = 0;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: currentTab == 0 ? Color(0xffFC6011) : Colors.grey,
                  ),
                  Text('Home',
                    style: TextStyle(
                      color: currentTab == 0 ? Color(0xffFC6011) : Colors.grey,
                    ),
                  )

                ],
              ),
            ),
          ),
          MaterialButton(
            minWidth: 40.0,
            onPressed: (){
              setState(() {
                currentScreen = OfferPage();
                currentTab = 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    color: currentTab == 1 ? Color(0xffFC6011) : Colors.grey,
                  ),
                  Text('Offers',
                    style: TextStyle(
                      color: currentTab == 1 ?Color(0xffFC6011) : Colors.grey,
                    ),
                  )

                ],
              ),
            ),
          ),
          MaterialButton(
            minWidth: 40.0,
            onPressed: (){
              setState(() {
                currentScreen = MenuPage();
                currentTab = 2;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: currentTab == 2 ? Color(0xffFC6011) : Colors.grey,
                  ),
                  Text('Menu',
                    style: TextStyle(
                      color: currentTab == 2 ? Color(0xffFC6011) : Colors.grey,
                    ),
                  )

                ],
              ),
            ),
          ),
          MaterialButton(
            minWidth: 40.0,
            onPressed: (){
              setState(() {
                currentScreen = ProfilePage();
                currentTab = 3;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: currentTab == 3 ? Color(0xffFC6011) : Colors.grey,
                  ),
                  Text('Person',
                    style: TextStyle(
                      color: currentTab == 3 ? Color(0xffFC6011) : Colors.grey,
                    ),
                  )

                ],
              ),
            ),
          ),
          MaterialButton(
            minWidth: 40.0,
            onPressed: (){
              setState(() {
                currentScreen = MorePage();
                currentTab = 4;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu_open,
                    color: currentTab == 4 ? Color(0xffFC6011) : Colors.grey,
                  ),
                  Text('More',
                    style: TextStyle(
                      color: currentTab == 4 ? Color(0xffFC6011): Colors.grey,
                    ),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
