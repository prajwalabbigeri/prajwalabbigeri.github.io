import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';
import '../services/download_cv.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  late Future<void> _loadAnimation;

  @override
  void initState() {
    super.initState();
    _loadAnimation = _preloadLottie();
  }

  Future<void> _preloadLottie() async {
    await Future.delayed(Duration(seconds: 1)); // Simulate a delay
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: grey,
      child: width>1000?Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical:width/15,horizontal: width/30),
            child: Container(
                width: width/3,
                child: Image(image: AssetImage('assets/images/developer-activity-concept-illustration.png'),fit: BoxFit.contain,)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Amoneon',
                    fontSize: width / 40,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: width / 40,
              ),
              Container(
                  width: width / 2.5,
                  child: Text(
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: width / 100,
                          color: Colors.white),
                      'I am a Application Developer with over 2.1 year of experience in building dynamic mobile applications.'
                          ' My skill set includes Dart, Flutter, Firebase, GitHub, etc.'
                          ' which allows me to contribute to both front-end and back-end development.'
                          ' I excel in creating responsive,'
                          ' modern UIs and integrating real-time data management with Firebase.'
                          ' With a strong grasp of state management and scalable architecture,'
                          ' I am passionate about staying on the cutting edge of technology and thrive in fast-paced environments.'
                          ' My blend of technical expertise and creativity ensures I deliver high-quality solutions, whether working independently or within a team.')),
              SizedBox(
                height: width / 40,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    downloadCV();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Download CV',
                        style: TextStyle(
                            color: green,
                            fontFamily: 'DM Sans',
                            fontSize: width / 90,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.download,
                        color: green,
                        size: width / 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ):Column(
        children: [
          SizedBox(
            height: width / 20,
          ),
          Text(
            'About Me',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Amoneon',
                fontSize: width / 15,
                fontWeight: FontWeight.w400),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: width / 40,
              ),
              Container(
                  width: width / 1.2,
                  child: Text(
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: width / 40,
                          color: Colors.white),
                      'I am a Application Developer with over year of experience in building dynamic mobile applications. My skill set includes Dart, Flutter, Firebase,  GitHub, etc which allows me to contribute to both front-end and back-end development. I excel in creating responsive, modern UIs and integrating real-time data management with Firebase. With a strong grasp of state management and scalable architecture, I am passionate about staying on the cutting edge of technology and thrive in fast-paced environments. My blend of technical expertise and creativity ensures I deliver high-quality solutions, whether working independently or within a team.')),
              SizedBox(
                height: width / 40,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    downloadCV();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Download CV',
                        style: TextStyle(
                            color: green,
                            fontFamily: 'DM Sans',
                            fontSize: width / 40,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.download,
                        color: green,
                        size: width / 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: width / 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
