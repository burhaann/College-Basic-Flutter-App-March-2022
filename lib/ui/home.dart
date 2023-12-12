import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spc_march_2022/data/ui.dart' as app;
import 'package:spc_march_2022/ui/Department.dart';
import 'dart:developer' as developer;

import 'package:spc_march_2022/ui/FazAad.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    //Fetching Data About Aspect Of the Target Device to make the UI Responsive
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double aspect = MediaQuery.of(context).size.aspectRatio;

    double adaptive() {
      if (width == height) {
        if (width < 360)
          return .7;
        else if (width > 600)
          return 1.25;
        else if (width > 900)
          return 1.5;
        else if (width > 1200)
          return 1.75;
        else if (width > 1500) return 2.0;
      } else if (width < height) {
        //Potrait
        if (width < 360)
          return .7;
        else if (width < 380)
          return .85;
        else if (width > 600)
          return 1.25;
        else if (width > 900)
          return 1.5;
        else if (width > 1200)
          return 1.75;
        else if (width > 1500) return 2.0;
      } else if (width > height) {
        //Landscape
        if (height < 360)
          return .7;
        else if (height < 380)
          return .85;
        else if (height > 600)
          return 1.25;
        else if (height > 900)
          return 1.5;
        else if (height > 1200)
          return 1.75;
        else if (height > 1500) return 2.0;
      }
      return 1;
    } //Differnt resolutions

    double responsive() {
      if (width == height) {
        return width;
      } else if (width < height) {
        //Potrait
        return height;
      } else {
        //Landscape
        return width;
      }
      return width;
    } //Potrait or landscape

    double paddin() {
      if (width == height) {
        return 10;
      } else if (width < height) {
        //Potrait
        return 10;
      } else {
        //Landscape
        return width / 4;
      }
      return width;
    } // Responsive Padding

    num adapt = num.parse(adaptive().toString()); //Differnt resolutions
    num response = num.parse(responsive().toString()); //Potrait or landscape
    double adapt_double =
        double.parse(adaptive().toString()); //Differnt resolutions
    double response_double =
        double.parse(responsive().toString()); //Potrait or landscape
    double paddin_double =
        double.parse(paddin().toString()); //Padding for Squaring out

    developer.log(
      "Adapt:$adapt  Response:$response Height:$height Width:$width Aspect:$aspect",
      name: "Values",
    );

    TransformationController controllerT = TransformationController();
    TransformationController controllerU = TransformationController();
    TransformationController controllerV = TransformationController();
    TransformationController controllerW = TransformationController();
    TransformationController controllerX = TransformationController();
    TransformationController controllerY = TransformationController();
    TransformationController controllerZ = TransformationController();

    var initialControllerValue,
        initialControllerValue1,
        initialControllerValue2,
        initialControllerValue3,
        initialControllerValue4,
        initialControllerValue5,
        initialControllerValue6,
        initialControllerValue7;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          color: app.ColorPalette.redBackground,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              app.ColorPalette.redBackground,
              Colors.deepOrange.shade800,
            ],
          ),
        ),
        child: Container(
          // padding: EdgeInsets.only(left: 15, right: 15),
          // margin: EdgeInsets.only(top: 50),
          child: LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  margin: EdgeInsets.only(top: 60 * adapt_double),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraint.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Burhaan Ahmad Beigh",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 15 * adapt_double,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand',
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5 * adapt_double,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        size: 20 * adapt_double,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FazAad(),
                                          ));
                                    },
                                    child: Text(
                                      "CUS-18-SET-10674",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 22 * adapt_double,
                                        // fontWeight: FontWeight.w900,
                                        fontFamily: 'JetBrainsMono',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(child: Container()),
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 150 * adapt_double,
                                    height: 150 * adapt_double,
                                    decoration: BoxDecoration(
                                      color: app.ColorPalette.yellowBackground,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -18 * adapt_double,
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      width: 100 * adapt_double,
                                      decoration: BoxDecoration(
                                        color: app.ColorPalette.darkBckground
                                            .withOpacity(.85),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "182106",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20 * adapt_double,
                                          // fontWeight: FontWeight.w100,
                                          fontFamily: 'RussoOne',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: width - 30,
                                height: 60 * adapt_double,
                                child: Row(
                                  children: [
                                    Spacer(flex: 1),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.emoji_events,
                                            size: 30 * adapt_double,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5 * adapt_double,
                                          ),
                                          Text(
                                            "Events",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 18 * adapt_double,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'ShareTechMono',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 2),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.support_agent,
                                            size: 30 * adapt_double,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5 * adapt_double,
                                          ),
                                          Text(
                                            "Services",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 18 * adapt_double,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'ShareTechMono',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 2),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.history_edu,
                                            size: 30 * adapt_double,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5 * adapt_double,
                                          ),
                                          Text(
                                            "Departments",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 18 * adapt_double,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'ShareTechMono',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 1),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5 * adapt_double,
                          ),
                          Expanded(
                            child: OverflowBox(
                              maxWidth: width,
                              child: Container(
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      app.ColorPalette.blueTint,
                                      app.ColorPalette.blueTint,
                                    ],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80 * adapt_double,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(.5),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 20 * adapt_double,
                                          ),
                                          Icon(
                                            Icons.newspaper,
                                            size: 45 * adapt_double,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10 * adapt_double,
                                          ),
                                          Text(
                                            "NEWS SECTION",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              wordSpacing: 4,
                                              letterSpacing: 4,
                                              fontSize: 25 * adapt_double,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Quicksand',
                                              color: Colors.white,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Icon(
                                            Icons.double_arrow,
                                            size: 45 * adapt_double,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10 * adapt_double,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30 * adapt_double,
                                    ),
                                    Column(
                                      children: [
                                        CarouselSlider(
                                          options: CarouselOptions(
                                            autoPlay: true,
                                            height: adapt * response * .35,
                                            aspectRatio: aspect,
                                            enlargeCenterPage: true,
                                            autoPlayAnimationDuration:
                                                Duration(seconds: 1),
                                          ),
                                          items: [
                                            Container(
                                              height: adapt * response * .35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerRight,
                                                  end: Alignment.centerLeft,
                                                  colors: [
                                                    Colors.red,
                                                    app.ColorPalette
                                                        .redBackground,
                                                  ],
                                                ),
                                              ),
                                              child: InteractiveViewer(
                                                minScale: 1.0,
                                                maxScale: 100.0,
                                                transformationController:
                                                    controllerT,
                                                onInteractionStart: (details) {
                                                  initialControllerValue =
                                                      controllerT.value;
                                                },
                                                onInteractionEnd: (details) {
                                                  controllerT.value =
                                                      initialControllerValue;
                                                },
                                                clipBehavior: Clip.none,
                                                child: Stack(
                                                  clipBehavior: Clip.none,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .centerRight,
                                                          end: Alignment
                                                              .centerLeft,
                                                          colors: [
                                                            Colors.red,
                                                            app.ColorPalette
                                                                .redBackground,
                                                          ],
                                                        ),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/2.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //Gradient Behind Text
                                                      height: 90 * adapt_double,
                                                      width:
                                                          adapt * response * .4,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                          colors: [
                                                            Colors.black
                                                                .withOpacity(
                                                                    .85),
                                                            Colors.black
                                                                .withOpacity(
                                                                    .5),
                                                            Colors.grey
                                                                .withOpacity(0),
                                                          ],
                                                          stops: [
                                                            0,
                                                            0.25,
                                                            1,
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 10,
                                                      child: SizedBox(
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        child: Container(
                                                          child: Text(
                                                            "1 Day Server Management Workshop",
                                                            textAlign: TextAlign
                                                                .center,
                                                            overflow:
                                                                TextOverflow
                                                                    .fade,
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                              fontSize: 15 *
                                                                  adapt_double,
                                                              // fontWeight:
                                                              //     FontWeight
                                                              //         .bold,
                                                              fontFamily:
                                                                  'JetBrainsMono',
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .75),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: adapt * response * .35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerRight,
                                                  end: Alignment.centerLeft,
                                                  colors: [
                                                    Colors.deepOrange,
                                                    Colors.yellowAccent,
                                                  ],
                                                ),
                                              ),
                                              child: InteractiveViewer(
                                                minScale: 1.0,
                                                maxScale: 100.0,
                                                transformationController:
                                                    controllerU,
                                                onInteractionStart: (details) {
                                                  initialControllerValue1 =
                                                      controllerU.value;
                                                },
                                                onInteractionEnd: (details) {
                                                  controllerU.value =
                                                      initialControllerValue1;
                                                },
                                                clipBehavior: Clip.none,
                                                child: Stack(
                                                  clipBehavior: Clip.none,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .centerRight,
                                                          end: Alignment
                                                              .centerLeft,
                                                          colors: [
                                                            Colors.red,
                                                            app.ColorPalette
                                                                .redBackground,
                                                          ],
                                                        ),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/4.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //Gradient Behind Text
                                                      height: 90 * adapt_double,
                                                      width:
                                                          adapt * response * .4,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                          colors: [
                                                            Colors.black
                                                                .withOpacity(
                                                                    .85),
                                                            Colors.black
                                                                .withOpacity(
                                                                    .5),
                                                            Colors.grey
                                                                .withOpacity(0),
                                                          ],
                                                          stops: [
                                                            0,
                                                            0.25,
                                                            1,
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 10,
                                                      child: SizedBox(
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        child: Container(
                                                          child: Text(
                                                            "💝❤💝❤💝",
                                                            textAlign: TextAlign
                                                                .center,
                                                            overflow:
                                                                TextOverflow
                                                                    .fade,
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                              fontSize: 20 *
                                                                  adapt_double,
                                                              // fontWeight:
                                                              //     FontWeight
                                                              //         .bold,
                                                              fontFamily:
                                                                  'JetBrainsMono',
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: adapt * response * .35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerRight,
                                                  end: Alignment.centerLeft,
                                                  colors: [
                                                    Colors.redAccent,
                                                    Colors.pinkAccent,
                                                  ],
                                                ),
                                              ),
                                              child: InteractiveViewer(
                                                minScale: 1.0,
                                                maxScale: 100.0,
                                                transformationController:
                                                    controllerV,
                                                onInteractionStart: (details) {
                                                  initialControllerValue2 =
                                                      controllerV.value;
                                                },
                                                onInteractionEnd: (details) {
                                                  controllerV.value =
                                                      initialControllerValue2;
                                                },
                                                clipBehavior: Clip.none,
                                                child: Stack(
                                                  clipBehavior: Clip.none,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .centerRight,
                                                          end: Alignment
                                                              .centerLeft,
                                                          colors: [
                                                            Colors.red,
                                                            app.ColorPalette
                                                                .redBackground,
                                                          ],
                                                        ),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/3.gif'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      //Gradient Behind Text
                                                      height: 90 * adapt_double,
                                                      width:
                                                          adapt * response * .4,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                          colors: [
                                                            Colors.black
                                                                .withOpacity(
                                                                    .85),
                                                            Colors.black
                                                                .withOpacity(
                                                                    .5),
                                                            Colors.grey
                                                                .withOpacity(0),
                                                          ],
                                                          stops: [
                                                            0,
                                                            0.25,
                                                            1,
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 10,
                                                      child: SizedBox(
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        child: Container(
                                                          child: Text(
                                                            "1234567890",
                                                            textAlign: TextAlign
                                                                .center,
                                                            overflow:
                                                                TextOverflow
                                                                    .fade,
                                                            maxLines: 2,
                                                            style: TextStyle(
                                                              fontSize: 15 *
                                                                  adapt_double,
                                                              // fontWeight:
                                                              //     FontWeight
                                                              //         .bold,
                                                              fontFamily:
                                                                  'JetBrainsMono',
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .75),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40 * adapt_double,
                                        ),
                                        Container(
                                          height: 80 * adapt_double,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 8 * adapt_double,
                                              ),
                                              Icon(
                                                Icons.notification_important,
                                                size: 45 * adapt_double,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 10 * adapt_double,
                                              ),
                                              Text(
                                                "NOTIFICATIONS",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  wordSpacing: 8,
                                                  letterSpacing: 6,
                                                  fontSize: 25 * adapt_double,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Icon(
                                                Icons.double_arrow,
                                                size: 45 * adapt_double,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 10 * adapt_double,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40 * adapt_double,
                                        ),
                                        Container(
                                          height: 200 * adapt_double,
                                          width: width,
                                          padding: EdgeInsets.only(
                                              right: paddin_double,
                                              left: paddin_double),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width:
                                                    width / 2 - paddin_double,
                                                color:
                                                    Colors.red.withOpacity(.5),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        color: Colors.black
                                                            .withOpacity(.5),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .blue
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        color: Colors.black
                                                            .withOpacity(.5),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .blue
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    width / 2 - paddin_double,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(.85),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .red
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .blue
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          topRight:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .blue
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          bottomRight:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .red
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 200 * adapt_double,
                                          width: width,
                                          padding: EdgeInsets.only(
                                              right: paddin_double,
                                              left: paddin_double),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width:
                                                    width / 2 - paddin_double,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(.85),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .red
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .blue
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          topRight:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .blue
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.only(
                                                                          bottomRight:
                                                                              Radius.circular(30)),
                                                                  color: Colors
                                                                      .red
                                                                      .withOpacity(
                                                                          .5),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    width / 2 - paddin_double,
                                                color:
                                                    Colors.red.withOpacity(.5),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        color: Colors.black
                                                            .withOpacity(.5),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .blue
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        color: Colors.black
                                                            .withOpacity(.5),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .blue
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80 * adapt_double,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Dep(),
                                                ));
                                          },
                                          child: InteractiveViewer(
                                            minScale: 1.0,
                                            maxScale: 100.0,
                                            transformationController:
                                                controllerW,
                                            onInteractionStart: (details) {
                                              initialControllerValue4 =
                                                  controllerW.value;
                                            },
                                            onInteractionEnd: (details) {
                                              controllerW.value =
                                                  initialControllerValue4;
                                            },
                                            clipBehavior: Clip.none,
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Container(
                                                  width: width,
                                                  height: width * .667,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/3.jpg'),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  //Gradient Behind Text
                                                  height: 90 * adapt_double,
                                                  width: width,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin: Alignment
                                                          .bottomCenter,
                                                      end: Alignment.topCenter,
                                                      colors: [
                                                        Colors.black
                                                            .withOpacity(1),
                                                        Colors.black
                                                            .withOpacity(.6),
                                                        Colors.grey
                                                            .withOpacity(0),
                                                      ],
                                                      stops: [
                                                        0,
                                                        0.25,
                                                        1,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: 5,
                                                  child: SizedBox(
                                                    width:
                                                        adapt * response * .4,
                                                    child: Container(
                                                      child: Text(
                                                        "Department of Information Technology",
                                                        textAlign:
                                                            TextAlign.center,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          fontSize:
                                                              30 * adapt_double,
                                                          // fontWeight:
                                                          //     FontWeight.bold,
                                                          fontFamily:
                                                              'SmoochSans',
                                                          color: Colors.white
                                                              .withOpacity(1),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80 * adapt_double,
                                        ),
                                        Container(
                                          height: adapt * response * .20,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.library_books,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "College Library",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.remove_red_eye,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "Vission & Mission",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.school,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "Principal's Message",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.manage_accounts,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "About Section",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.collections,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "College Gallery",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(4),
                                                  width: adapt * response * .15,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.red,
                                                        app.ColorPalette
                                                            .redBackground,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .admin_panel_settings,
                                                        size: adapt_double *
                                                            response_double /
                                                            15,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            5 * adapt_double,
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          "Admission",
                                                          overflow:
                                                              TextOverflow.fade,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: adapt_double *
                                                                response_double /
                                                                35,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontFamily:
                                                                'Quicksand',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80 * adapt_double,
                                        ),
                                        Container(
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Container(
                                                width: width,
                                                height: 120 * adapt_double,
                                                decoration: BoxDecoration(
                                                  color: app.ColorPalette
                                                      .yellowBackground,
                                                ),
                                                child: Expanded(
                                                  child: Container(),
                                                ),
                                              ),
                                              Positioned(
                                                left: 10 * adapt_double,
                                                bottom: -20 * adapt_double,
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  width: 140 * adapt_double,
                                                  decoration: BoxDecoration(
                                                    color: app.ColorPalette
                                                        .darkBckground
                                                        .withOpacity(.85),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    height: 150 * adapt_double,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: width,
                                                height: 120 * adapt_double,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            180 * adapt_double,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "SEMINAR",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              wordSpacing: 4,
                                                              letterSpacing: 4,
                                                              fontSize: 25 *
                                                                  adapt_double,
                                                              fontFamily:
                                                                  'B612Mono',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Text(
                                                              " UI/UX Design - Getting started and Career opportunities.  ",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              overflow:
                                                                  TextOverflow
                                                                      .fade,
                                                              style: TextStyle(
                                                                fontSize: 15 *
                                                                    adapt_double,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'AzeretMono',
                                                                color: app
                                                                    .ColorPalette
                                                                    .yellowBackground,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            " By Department Of Information Technology",
                                                            textAlign:
                                                                TextAlign.start,
                                                            overflow:
                                                                TextOverflow
                                                                    .fade,
                                                            style: TextStyle(
                                                              fontSize: 15 *
                                                                  adapt_double,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'AzeretMono',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              // Container( //Gradient Behind Text
                                              //   height: 20 * adapt_double,
                                              //   decoration: BoxDecoration(
                                              //     gradient: LinearGradient(
                                              //       begin:
                                              //           Alignment.bottomCenter,
                                              //       end: Alignment.topCenter,
                                              //       colors: [
                                              //         Colors.grey,
                                              //         Colors.grey.withOpacity(0)
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                              Positioned(
                                                left: 20 * adapt_double,
                                                bottom: -20 * adapt_double,
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  width: 120 * adapt_double,
                                                  decoration: BoxDecoration(
                                                    color: app.ColorPalette
                                                        .darkBckground
                                                        .withOpacity(.85),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    height: 180 * adapt_double,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40 * adapt_double,
                                        ),
                                        Container(
                                          height: adapt * response * .3,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                                InteractiveViewer(
                                                  minScale: 1.0,
                                                  maxScale: 100.0,
                                                  transformationController:
                                                      controllerX,
                                                  onInteractionStart:
                                                      (details) {
                                                    initialControllerValue5 =
                                                        controllerX.value;
                                                  },
                                                  onInteractionEnd: (details) {
                                                    controllerX.value =
                                                        initialControllerValue5;
                                                  },
                                                  clipBehavior: Clip.none,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Container(
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .centerRight,
                                                            end: Alignment
                                                                .centerLeft,
                                                            colors: [
                                                              Colors.red,
                                                              app.ColorPalette
                                                                  .redBackground,
                                                            ],
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/1.jpg'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        //Gradient Behind Text
                                                        height:
                                                            90 * adapt_double,
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .bottomCenter,
                                                            end: Alignment
                                                                .topCenter,
                                                            colors: [
                                                              Colors.black
                                                                  .withOpacity(
                                                                      .85),
                                                              Colors.black
                                                                  .withOpacity(
                                                                      .5),
                                                              Colors.grey
                                                                  .withOpacity(
                                                                      0),
                                                            ],
                                                            stops: [
                                                              0,
                                                              0.25,
                                                              1,
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 10,
                                                        child: SizedBox(
                                                          width: adapt *
                                                              response *
                                                              .4,
                                                          child: Container(
                                                            child: Text(
                                                              "Students during dal cleaning activity",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              overflow:
                                                                  TextOverflow
                                                                      .fade,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                fontSize: 15 *
                                                                    adapt_double,
                                                                // fontWeight:
                                                                //     FontWeight
                                                                //         .bold,
                                                                fontFamily:
                                                                    'JetBrainsMono',
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .75),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30 * adapt_double,
                                                ),
                                                InteractiveViewer(
                                                  minScale: 1.0,
                                                  maxScale: 100.0,
                                                  transformationController:
                                                      controllerY,
                                                  onInteractionStart:
                                                      (details) {
                                                    initialControllerValue6 =
                                                        controllerY.value;
                                                  },
                                                  onInteractionEnd: (details) {
                                                    controllerY.value =
                                                        initialControllerValue6;
                                                  },
                                                  clipBehavior: Clip.none,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Container(
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .centerRight,
                                                            end: Alignment
                                                                .centerLeft,
                                                            colors: [
                                                              Colors.red,
                                                              app.ColorPalette
                                                                  .redBackground,
                                                            ],
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/2.gif'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        //Gradient Behind Text
                                                        height:
                                                            90 * adapt_double,
                                                        width: adapt *
                                                            response *
                                                            .4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .bottomCenter,
                                                            end: Alignment
                                                                .topCenter,
                                                            colors: [
                                                              Colors.black
                                                                  .withOpacity(
                                                                      .85),
                                                              Colors.black
                                                                  .withOpacity(
                                                                      .5),
                                                              Colors.grey
                                                                  .withOpacity(
                                                                      0),
                                                            ],
                                                            stops: [
                                                              0,
                                                              0.25,
                                                              1,
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 10,
                                                        child: SizedBox(
                                                          width: adapt *
                                                              response *
                                                              .4,
                                                          child: Container(
                                                            child: Text(
                                                              "MORE CONTENT SOON!",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              overflow:
                                                                  TextOverflow
                                                                      .fade,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                fontSize: 15 *
                                                                    adapt_double,
                                                                // fontWeight:
                                                                //     FontWeight
                                                                //         .bold,
                                                                fontFamily:
                                                                    'JetBrainsMono',
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .75),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30 * adapt_double,
                                                ),
                                                Container(
                                                  width: adapt * response * .4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.deepOrange,
                                                        Colors.yellowAccent,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30 * adapt_double,
                                                ),
                                                Container(
                                                  width: adapt * response * .4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerRight,
                                                      end: Alignment.centerLeft,
                                                      colors: [
                                                        Colors.redAccent,
                                                        Colors.pinkAccent,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20 * adapt_double,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40 * adapt_double,
                                        ),
                                        Container(
                                          height: (response / 20) * adapt,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Department of IT, SP College",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                wordSpacing: 4,
                                                letterSpacing: 4,
                                                fontSize: 16 * adapt_double,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'SmoochSans',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ButtonTapped extends StatelessWidget {
  var icon;

  ButtonTapped({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey[700],
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade700,
                    Colors.grey.shade600,
                    Colors.grey.shade500,
                    Colors.grey.shade200,
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
                    1
                  ])),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.shade200,
                  Colors.grey.shade300,
                  Colors.grey.shade400,
                  Colors.grey.shade500,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  var icon;

  MyButton({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 37,
          color: Colors.grey[800],
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                1
              ]),
        ),
      ),
    );
  }
}
