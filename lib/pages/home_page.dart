import 'package:flutter/material.dart';
import 'package:haseeb_ur_rehman/pages/profile_page.dart';
import 'package:haseeb_ur_rehman/widgets/food_name_widget.dart';
import 'package:haseeb_ur_rehman/widgets/most_populer.dart';
import 'package:haseeb_ur_rehman/widgets/populer_restaurant.dart';
import 'package:haseeb_ur_rehman/widgets/recent_item_widget.dart';

import '../widgets/bottom_navigation.dart';
import 'menu_page.dart';
import 'more_page.dart';
import 'offer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _searchController = TextEditingController();

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
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigation()

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            Text('Good morning Akila!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
              Icon(Icons.shopping_cart,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 10),
                Text('Delivery to',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
                ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Current Location',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.keyboard_arrow_down,color: Color(0xffFC6011),
                    size: 25,
                    ),

                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  height: 56.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffF2F2F2),

                  ),
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 17),
                        prefixIcon: Icon(Icons.search,size: 22,),
                        border: InputBorder.none,
                        hintText: 'Search food',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                          fontSize: 17
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodNameWidget(
                          image: 'assets/images/ur.png',
                          name: 'Offers'),
                      SizedBox(width: 10,),
                      FoodNameWidget(
                          image: 'assets/images/ur.png',
                          name: 'Sri Lankan'),
                      SizedBox(width: 10,),
                      FoodNameWidget(
                          image: 'assets/images/ur.png',
                          name: 'Italian'),
                      SizedBox(width: 10,),
                      FoodNameWidget(
                          image: 'assets/images/ur.png',
                          name: 'Indian'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Restaurents',
                    style: TextStyle(
                      fontSize: 22
                    ),
                    ),
                    Text('View all',
                      style: TextStyle(
                        fontSize: 15,
                          color: Color(0xffFC6011)
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                PopularRestaurant(name: 'Minute by tuk tuk'),
                PopularRestaurant(name: 'Cafe de Noir'),
                PopularRestaurant(name: 'Bakes by Tella'),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Popular ',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                    Text('View all',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFC6011)
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MostPopuler(name: 'Cafe De Bambaa') ,
                      SizedBox(width: 10),
                      MostPopuler(name: 'Burger by Bello')
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Items',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                    Text('View all',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFC6011)
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.0,),
                RecentItem(
                    name: 'Mulberry Pizza by Josh',
                    image: 'assets/images/piecePizza.png'),
                RecentItem(
                    name: 'Barita',
                    image: 'assets/images/tea.png'),
                RecentItem(
                    name: 'Pizza Rush Hour',
                    image: 'assets/images/pizza2.png'),


              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
