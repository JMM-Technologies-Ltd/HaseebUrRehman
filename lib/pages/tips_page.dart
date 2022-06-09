import 'package:flutter/material.dart';
import 'package:haseeb_ur_rehman/constant.dart';
import 'package:haseeb_ur_rehman/pages/tips_widget.dart';
import 'package:haseeb_ur_rehman/widgets/dot_indicator.dart';
import 'package:haseeb_ur_rehman/widgets/reuse_container_button.dart';


class TipsPage extends StatefulWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {

  late PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
  }
  @override
  void dispose(){
    _pageController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50),
               Expanded(

                 child: PageView.builder(
                    itemCount: Constant.image_data.length,
                    controller: _pageController,
                    onPageChanged: (index){
                      setState((){
                        _pageIndex = index;
                      });
                      },
                    itemBuilder: (context,index) => TipesWidget(
                      description: Constant.image_data[index].description,
                      image: Constant.image_data[index].image,
                      name: Constant.image_data[index].name,
                    ),
                  ),
               ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(Constant.image_data.length,
                            (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DotIndicator(isActive: index == _pageIndex),
                        )
                    ),
                  ],
                ),
              SizedBox(height: 20),
              ReUserContainerButton(
                  onclick: (){
                    _pageController.nextPage(
                        duration: Duration(microseconds: 300),
                        curve: Curves.easeIn);
                  },
                  color: Color(0xffFC6011),
                  name: 'Next'),

              SizedBox(height: 300),
            ],
          ),
        )
      ),
    );
  }
}
