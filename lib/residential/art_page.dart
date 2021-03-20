import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fyiar_homepage/constant/data.dart';
import 'package:fyiar_homepage/widget/CommonWidgets.dart';
import 'package:fyiar_homepage/widget/ExpandableTextState.dart';


class ArtPage extends StatefulWidget {
  @override
  _ArtPageState createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> {
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Savya Jain",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      // body: CustomImageSlider(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          imageSlider(height),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.save_alt),
                  label: Text("Save")),
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.favorite_border),
                  label: Text("Like")),
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.share),
                  label: Text("Share")),
            ],
          ),          
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Savya Jain',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26, letterSpacing: 0.5, color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),                    
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(wallet, size: 16,),
                        SizedBox(width: 5,),
                        Text(
                          'Price: INR 4,0000/-',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.image, size: 18,),
                        SizedBox(width: 5,),
                        Text(
                          'Acrylic on Canvas',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey[800]),
                        ),                        
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Column(                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('24 x 18 in', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey[800]),),
                          SizedBox(height: 8,),
                          Text('61 x 45.7 cm', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey[800]),),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    FyiarButton3(),                    
                    // Icon(FyiarButton1.fyiar_logo, size: 40 ,)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FlatButton(              
              color: Theme.of(context).accentColor,
              onPressed: () {}, 
              child: Row(
                children: [
                  Icon(Icons.web, color: Colors.white,),
                  SizedBox(width: 8),
                  Text('Website', style: TextStyle(color: Colors.white),)
                ],
              )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text("Locality", textAlign: TextAlign.left,  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.grey[800]),)
            ),
          ),
          SizedBox(
            height: 10,
          ),          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,                  
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/map.png', ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text("Nearby", textAlign: TextAlign.left,  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.grey[800]),)
            ),
          ),
          SizedBox(height: 20,),
          horizontalIconSlider(amenities, 'amenity'),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text("Unit Options", textAlign: TextAlign.left,  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.grey[800]),)
            ),
          ),          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(              
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconDescription2(context, 'assets/images/sprites/icon-plot-size.png', 'Project Size', '7 Acers'),                                        
                    iconDescription2(context, 'assets/images/sprites/icon-plot-size.png', 'Unit Configuration', '7 Acers'),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconDescription2(context, 'assets/images/sprites/icon-delivery-timeline.png', 'Unit Configuration', '4BHK, 3BHK'),
                    iconDescription2(context, 'assets/images/sprites/icon-delivery-timeline.png', 'Delivery Timeline', '1-2 Years'),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconDescription2(context, 'assets/images/sprites/icon-construction-stage.png', 'Construction Stage', 'Under Construction'),                  
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                bhkDetails(context, 'Luxima 3BHK', '3', '4', '2', '1', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.'),
                SizedBox(height: 30,),
                bhkDetails(context, 'Optima 3BHK', '3', '4', '2', '1', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.'),
                SizedBox(height: 30,),
                bhkDetails(context, 'Maxima 4BHK', '3', '4', '2', '1', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.', '2075.02 sq.ft.'),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        // isExtended: true,
        label: const Text('Send Query', style: TextStyle(letterSpacing: 0),),
        icon: const Icon(Icons.send),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {
          setState(() {
            
          });
        },
      ),
    );
  }

  Column bhkDetails(BuildContext context, String bhkTitle, String bedsCount, String bathsCount, String storageRoomCount, String servantRoomCount, String area, String carpetArea, String balconyArea, String commonArea) {
    return Column(              
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bhkTitle, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.grey[800]),),
                  FyiarButton1(), 
                ],                  
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconDescription2(context, 'assets/images/sprites/icon-beds 2.png', 'Beds', bedsCount),                                        
                  iconDescription2(context, 'assets/images/sprites/icon-baths.png', 'Baths', bathsCount),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconDescription2(context, 'assets/images/sprites/icon-storage-rooms.png', 'Storage Room', storageRoomCount),
                  iconDescription2(context, 'assets/images/sprites/icon-servant-room.png', 'Servant Room', servantRoomCount),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconDescription2(context, 'assets/images/sprites/icon-area.png', 'Area', area),
                  iconDescription2(context, 'assets/images/sprites/icon-area.png', 'Carpet Area', carpetArea),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconDescription2(context, 'assets/images/sprites/icon-area.png', 'Balcony Area', balconyArea),
                  iconDescription2(context, 'assets/images/sprites/icon-area.png', 'Common Area', commonArea),
                ],
              ),
            ],
          );
  }

  Container iconDescription2(BuildContext context, String imageUrl, String title, String subtitle) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 30,
      child: Row(                
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageUrl, height: 40, width: 40,),
          SizedBox(width: 10,),
          Column(                    
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16,)),
              SizedBox(height: 2,),
              Text(subtitle, style: TextStyle(fontSize: 14, color: Theme.of(context).accentColor, fontWeight:FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }

  

  Padding horizontalIconSlider(List<dynamic> list, String fieldName) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 70,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Image(
                              image: NetworkImage(list[index]['icon'])),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            list[index][fieldName],
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
  }

  // Container actionIconButton(String url, String title) {
  //   return Container(
  //     height: 80,
  //     width: 85,
  //     decoration: BoxDecoration(
  //       color: Theme.of(context).accentColor,
  //       border: Border.all(
  //         color: Theme.of(context).accentColor,
  //       ),
  //       borderRadius: BorderRadius.circular(3)),
  //     child: InkWell(        
  //       onTap: () {}, // Handle your callback.
  //       splashColor: Colors.black.withOpacity(0.5),
  //       child: Padding(
  //         padding: const EdgeInsets.fromLTRB(2, 15, 2, 0),
  //         child: Column(
  //           children: [
  //             Image.asset(url, height: 30, width: 30,),
  //             SizedBox(height: 10,),
  //             Text(title,textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white)),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Container actionIconButton(String url, String title, double imageSize) {
    return Container(
      height: 50,       
      width: 170,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        border: Border.all(
          color: Theme.of(context).accentColor,
        ),
        borderRadius: BorderRadius.circular(6)),
      child: InkWell(        
        onTap: () {}, // Handle your callback.
        splashColor: Colors.black.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(url, height: imageSize, width: imageSize,),
              // Icon(Entypo.book_open, color: Colors.white,),
              SizedBox(width: 10,),
              Text(title,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }

  Container imageSlider(double height) {
    return Container(
      child: Stack(children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          items: art_images.map((item) {
            return Container(
              width: MediaQuery.of(context).size.width,
                child: Image(
                  image: NetworkImage(item['url']),
                  fit: BoxFit.fill,
                  height: height,
                ));
          }).toList(),
          options: CarouselOptions(
              height: height / 2.9,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reson) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Positioned(
          bottom: 20,
          left: 25,
          right: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: art_images.map((item) {
              int index = art_images.indexOf(item);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(255, 255, 255, 0.9)
                      : Color.fromRGBO(255, 255, 255, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
          top: 110,
          left: 10,
          child: Container(
            width: 400,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      color: Colors.white,
                      onPressed: () => buttonCarouselController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear)),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.white,
                      onPressed: () => buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear)),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff8faf8),
      height: 50.0,
      alignment: Alignment.center,
      child: new BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            new IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                onPressed: null),
            FyiarButton2(),
            new IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                ),
                onPressed: null),
            new IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                onPressed: null),
          ],
        ),
      ),
    );
  }
}
