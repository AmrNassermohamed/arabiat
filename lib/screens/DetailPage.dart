import 'package:arabiat/custom/BorderIcon.dart';
import 'package:arabiat/custom/OptionButton.dart';
import 'package:arabiat/utils/constants.dart';
import 'package:arabiat/utils/custom_functions.dart';
import 'package:arabiat/utils/widget_functions.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  final dynamic itemData;

  const DetailPage({Key key,@required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(

        backgroundColor: COLOR_WHITE,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(

                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/images/Lexus-LCH-Hybrid-Hero-Desktop-1387x518-LEX-LCH-CY16-0012-04_M75.jpg"),
                        Positioned(
                          width: size.width,
                          top: padding,
                          child: Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Badge(
                                  badgeContent: Text(
                                    "12",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.notifications,color: Colors.white,),
                                    onPressed: () {

                                    },
                                  ),
                                ),
                                Icon(Icons.list,color: Colors.white,),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    addVerticalSpace(padding),
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.end
                   //crossAxisAlignment:CrossAxisAlignment.center

                   ,children: [


                     Padding(

                       padding: sidePadding,
                       child: Text("تصفح حسب نوع السياره",style: themeData.textTheme.headline4,),
                     )
                   ],),
                    /* Padding(
                      padding: sidePadding,
                      child: Text("House Information",style: themeData.textTheme.headline4,),
                    ),*/
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile(content: "}",name: "wagon",),
                          InformationTile(content: "}",name: "Suv",),
                          InformationTile(content: "}",name: "Sedan",),
                          InformationTile(content: "}",name: "Hatchback",)
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end
                      //crossAxisAlignment:CrossAxisAlignment.center

                      ,children: [


                      Padding(

                        padding: sidePadding,
                        child: Text("تصفح حسب نوع الماركه",style: themeData.textTheme.headline4,),
                      )
                    ],),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile2(content:"assets/images/800px-Ford-Motor-Company-Logo.png" ,name: "ford",),
                          InformationTile2(content: "assets/images/Chevy_Chevrolet_Gold_Bowtie__24654.1411781050.jpg",name: "Chevolet",),
                          InformationTile2(content: "assets/images/nissan-logo-png-transparent.png",name: "nissan",),
                          InformationTile2(content: "assets/images/e1d0e7b12ea7d906d0016f718fb8585d.jpg",name: "Bmw",)
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end
                      //crossAxisAlignment:CrossAxisAlignment.center

                      ,children: [


                      Padding(

                        padding: sidePadding,
                        child: Text("جديد الوكالات",style: themeData.textTheme.headline4,),
                      )
                    ],),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile4(content:"assets/images/800px-Ford-Motor-Company-Logo.png" ,name: "ford",),
                          InformationTile4(content: "assets/images/Chevy_Chevrolet_Gold_Bowtie__24654.1411781050.jpg",name: "Chevolet",),
                          InformationTile4(content: "assets/images/nissan-logo-png-transparent.png",name: "nissan",),
                          InformationTile4(content: "assets/images/e1d0e7b12ea7d906d0016f718fb8585d.jpg",name: "Bmw",)
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    addVerticalSpace(padding),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end
                      //crossAxisAlignment:CrossAxisAlignment.center

                      ,children: [


                      Padding(

                        padding: sidePadding,
                        child: Text("فيديو",style: themeData.textTheme.headline4,),
                      )
                    ],),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          InformationTile3(content:"assets/images/800px-Ford-Motor-Company-Logo.png" ,name: "ford",),
                          SizedBox(width: 10,),
                          InformationTile3(content: "assets/images/Chevy_Chevrolet_Gold_Bowtie__24654.1411781050.jpg",name: "Chevolet",),
                          SizedBox(width: 10,),
                          InformationTile3(content: "assets/images/nissan-logo-png-transparent.png",name: "nissan",),
                          SizedBox(width: 10,),
                          InformationTile3(content: "assets/images/e1d0e7b12ea7d906d0016f718fb8585d.jpg",name: "Bmw",)
                        ],
                      ),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar:   BottomNavigationBar(
          backgroundColor:Color.fromRGBO(
              0,
              0,
              255,
              .8
          ),
       // onTap: onTabTapped,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [

          BottomNavigationBarItem(
            icon: new Image.asset("assets/images/kisspng-computer-icons-customer-service-icon-design-it-ser-ub4we-engineering-services-5b04fd031e98b6.5225810215270535711253.png",width: 25,height: 25,color: Colors.white,),
            title: new Text('التامين',style: TextStyle(fontSize: 15,color: Colors.white),),
          ),
          BottomNavigationBarItem(
            icon: new Image.asset("assets/images/suspension.png",width: 25,height: 25,color: Colors.white,),
            title: new Text('الوكالات',style: TextStyle(fontSize: 15,color: Colors.white),),
          ),
          BottomNavigationBarItem(
            icon: new Image.asset("assets/images/car-repair.png",width: 25,height: 25,color: Colors.white,),

            title: new Text('الخدمات',style: TextStyle(fontSize: 16,color: Colors.white),),
          ),
        ],
      ),
      ),
    );
  }
}

class InformationTile extends StatelessWidget{

  final String content;
  final String name;

  const InformationTile({Key key,@required this.content,@required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width*0.20;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/PngItem_1246747.png",width: tileSize,height: tileSize,),
  //        addVerticalSpace(15),
          Text(name,style: themeData.textTheme.headline6,)
        ],
      ),
    );

  }

}
class InformationTile2 extends StatelessWidget{

  final String content;
  final String name;

  const InformationTile2({Key key,@required this.content,@required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width*0.20;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderIcon(
              width: tileSize,
              height: tileSize,
              child: Image.asset(content,width: tileSize,height: tileSize,)),
          addVerticalSpace(15),
          Text(name,style: themeData.textTheme.headline6,)
        ],
      ),
    );

  }

}
class InformationTile4 extends StatelessWidget{

  final String content;
  final String name;

  const InformationTile4({Key key,@required this.content,@required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width*0.50;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderIcon(
              width: tileSize,
              height: tileSize,
              child:  new Column(children: [
                new Image.asset("assets/images/Lexus-RX-homepage-content-tile_LEX-RXG-MY21-0027_750x460_M75.jpg"),

                addVerticalSpace(25),
            new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text("يبدا من 12900 ك",style: TextStyle(fontSize: 7),textAlign: TextAlign.left,),
              Text("Audi 8b",style: themeData.textTheme.headline6,textAlign: TextAlign.left,),
            ],)    ,
              ],)),//new  Image.asset("assets/images/Lexus-RX-homepage-content-tile_LEX-RXG-MY21-0027_750x460_M75.jpg",width: tileSize,height: tileSize*2,))),
          //addVerticalSpace(15),
          //Text(name,style: themeData.textTheme.headline6,textAlign: TextAlign.left,)
        ],
      ),
    );

  }

}
class InformationTile3 extends StatelessWidget{

  final String content;
  final String name;

  const InformationTile3({Key key,@required this.content,@required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width*0.70;
   return Container(
     alignment: Alignment.bottomLeft,
      child: Column(
        children: [
          Container(
            width: tileSize,
            height: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/Lexus-LCH-Hybrid-Hero-Desktop-1387x518-LEX-LCH-CY16-0012-04_M75.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),

        ],
      ),
    );

  }}
