import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:prajwal_portfolio/services/download_cv.dart';
import 'package:prajwal_portfolio/widges/about.dart';
import 'package:prajwal_portfolio/widges/contact.dart';
import 'package:prajwal_portfolio/widges/experince.dart';
import 'package:prajwal_portfolio/widges/projects.dart';
import 'package:prajwal_portfolio/widges/skills.dart';

import 'constants/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool skill = false;
  bool about = false;
  bool project = false;
  bool contact = false;
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  bool isLoading = true; // Track loading state


  @override
  void initState() {
    super.initState();
    _loadAssets(); // Start loading assets when the widget is initialized
  }

  Future<void> _loadAssets() async {
    // Simulate asset loading with a delay
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLoading = false; // Set loading to false when assets are loaded
    });
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return isLoading?Scaffold(
      backgroundColor: black,
      body: Center(child: SpinKitWaveSpinner(size: width>1000?width/15:width/4,color: green,waveColor: blue,),),
    ):Scaffold(
      backgroundColor: black,
      body: Container(
        width: width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(width>1000?width / 40:width/20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {_scrollToSection(_contactKey);},
                        child: Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(width / 180),
                              boxShadow: [
                                BoxShadow(
                                    color: green,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 150, vertical: width / 150),
                            child: Text(
                              'HIRE ME',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width>1000?width / 80:width/30,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          downloadCV();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(width / 180),
                              boxShadow: [
                                BoxShadow(
                                    color: green,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 200, vertical: width / 150),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                  size:width>1000?width / 60:width/25,
                                ),
                                Text(
                                  ' CV ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width>1000?width / 80:width/30,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              width>1000?Container(
                width: width/6,
                child: Lottie.asset('assets/lottie/Animation - 1724317668666.json',frameRate: FrameRate.max),
              ):Container(
                width: width/1.8,
                child: Lottie.asset('assets/lottie/Animation - 1724317668666.json',frameRate: FrameRate.max),
              ),
              Text(
                'APP DEVELOPER',
                style: TextStyle(
                    color: Colors.white54,
                    fontFamily: 'DM Sans',
                    fontSize: width>1000?width / 60:width/25,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: width / 80,
              ),
              Text(
                'PRAJWAL ABBIGERI',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Amoneon',
                    fontSize: width>1000?width / 18:width/9,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: width / 80,
              ),
              Visibility(
                visible: width>1000?true:false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          skill = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          skill = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: (){
                          _scrollToSection(_skillsKey);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width / 40),
                              gradient: LinearGradient(
                                colors: [
                                  skill ? green : black,
                                  skill ? blue : black,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              border: Border.all(color: Colors.white54, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 60, vertical: width / 180),
                            child: Text(
                              'SKILLS',
                              style: TextStyle(
                                  color: skill ? Colors.white : Colors.white54,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 80,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          about = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          about = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: (){
                          _scrollToSection(_aboutKey);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width / 40),
                              gradient: LinearGradient(
                                colors: [
                                  about ? green : black,
                                  about ? blue : black,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              border: Border.all(color: Colors.white54, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 60, vertical: width / 180),
                            child: Text(
                              'ABOUT',
                              style: TextStyle(
                                  color: about ? Colors.white : Colors.white54,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 80,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          project = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          project = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: (){
                          _scrollToSection(_projectKey);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width / 40),
                              gradient: LinearGradient(
                                colors: [
                                  project ? green : black,
                                  project ? blue : black,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              border: Border.all(color: Colors.white54, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 60, vertical: width / 180),
                            child: Text(
                              'PROJECTS',
                              style: TextStyle(
                                  color: project ? Colors.white : Colors.white54,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 80,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          contact = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          contact = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: (){
                          _scrollToSection(_contactKey);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width / 40),
                              gradient: LinearGradient(
                                colors: [
                                  contact ? green : black,
                                  contact ? blue : black,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              border: Border.all(color: Colors.white54, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 60, vertical: width / 180),
                            child: Text(
                              'CONTACT',
                              style: TextStyle(
                                  color: contact ? Colors.white : Colors.white54,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 80,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width>1000?width / 10:width/30,
              ),
              SizedBox(
                height: width/40,
                key: _skillsKey,
              ),
              SkillsWidget(),
              SizedBox(
                height: width>1000?width / 10:width/30,
              ),
              SizedBox(
                height: width/40,
                key: _aboutKey,
              ),
              AboutWidget(),
              SizedBox(
                height: width / 10,
              ),
              SizedBox(
                height: width/40,
                key: _projectKey,
              ),
              ProjectsWidget(),
              SizedBox(
                height: width / 10,
              ),
              ExperienceWidget(),
              SizedBox(
                height: width / 10,

              ),
              SizedBox(
                height: width/40,
                key: _contactKey,
              ),
              ContactWidget(),
              SizedBox(
                height: width>1000?width / 20:width/10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
