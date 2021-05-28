import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                height: 300.0,
                width: double.infinity,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,

                  
                  dotSize: 6.0,
                  dotIncreasedColor: Colors.cyan,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  images: [
                    AssetImage('images/image_class2.jpg'),
                    AssetImage('images/image_class3.jpg'),
                    AssetImage('images/image_class.jpg')
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
