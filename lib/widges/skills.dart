import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  State<SkillsWidget> createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:   width>1000?width / 8:width/10),
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                    color: green,
                    thickness: 2,
                  )),
              Text(
                width>1000?'     Skills     ':'  Skills  ',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Amoneon',
                    fontSize: width>1000?width / 40:width/20,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                  child: Divider(
                    color: green,
                    thickness: 2,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: width>1000?width / 20:width/10,
        ),
        width>1000?Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildService(
                  'assets/images/world-wide-web_1927656.png',
                  'website',
                  'I build responsive and dynamic websites tailored to your needs, ensuring a seamless user experience across all devices.',
                ),
                SizedBox(
                  width: width / 30,
                ),
                buildService(
                  'assets/images/app-development_10245981.png',
                  'application',
                  'I create user-friendly and innovative mobile apps for both Android and iOS, focusing on performance and intuitive design.',
                ),
                SizedBox(
                  width: width / 30,
                ),
                buildService(
                  'assets/images/digital-marketing_7008393.png',
                  'frontend',
                  'I design and develop engaging and interactive front-end experiences, bringing your vision to life with clean, efficient code.',
                ),
                SizedBox(
                  width: width / 30,
                ),
                buildService(
                  'assets/images/coding_2010990.png',
                  'backend',
                  'I develop scalable back-end systems, ensuring your application runs smoothly with secure data management and efficient server operations.',
                ),
                SizedBox(
                  width: width / 30,
                ),
                buildService(
                  'assets/images/database_11921716.png',
                  'database',
                  'I manage and optimize databases management, ensuring data integrity, security, and efficient access for your applications and more.',
                ),
              ],
            ),
          ),
        ):Container(// Adjust based on your design
          height: width/1.75,
          child: CarouselSlider(
            options: CarouselOptions(
              height: width / 1.75,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              aspectRatio: 2.0,
              viewportFraction: 0.8,
            ),
            items: [
              buildService(
                'assets/images/world-wide-web_1927656.png',
                'website',
                'I build responsive and dynamic websites tailored to your needs, ensuring a seamless user experience across all devices.',
              ),
              buildService(
                'assets/images/app-development_10245981.png',
                'application',
                'I create user-friendly and innovative mobile apps for both Android and iOS, focusing on performance and intuitive design.',
              ),
              buildService(
                'assets/images/digital-marketing_7008393.png',
                'frontend',
                'I design and develop engaging and interactive front-end experiences, bringing your vision to life with clean, efficient code.',
              ),
              buildService(
                'assets/images/coding_2010990.png',
                'backend',
                'I develop scalable back-end systems, ensuring application runs smoothly with secure data management and operations.',
              ),
              buildService(
                'assets/images/database_11921716.png',
                'database',
                'I manage and optimize databases management, ensuring integrity, security, and efficient access for your applications.',
              ),
            ],
          ),
        ),
        SizedBox(
          height: width>1000?width / 40:width/20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width>1000?width / 8:width/10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Software Stacks:',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: width>1000?'Amoneon':'DM Sans',
                  fontSize: width>1000?width / 80:width/25,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        SizedBox(
          height: width>1000?width / 40:width/20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width>1000?width / 8:width/10),
          child: Column(
            children: [

              width>1000?Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSkill('Flutter',
                      'assets/images/10210182191579517842-128.png'),
                  buildSkill('Dart',
                      'assets/images/17985894551536211770-128.png'),
                  buildSkill('Firebase',
                      'assets/images/6247864081536298180-128.png'),
                  buildSkill('GitHub',
                      'assets/images/3842828341530103314-128.png'),
                  buildSkill('Android studio',
                      'assets/images/14178750871552037061-128.png'),
                ],
              ):HorizontalImageScrollerAnimation(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildService(String image, String title, String description) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width>1000?width / 4.4:width/1.2,
      decoration: BoxDecoration(
          color: width>1000?black:grey,
          borderRadius: BorderRadius.circular(width/40)
      ),
      child: Column(
        children: [
          SizedBox(height: width/20,),
          CircleAvatar(
            radius: width>1000?width / 35:width/12,
            backgroundColor: Colors.white,
            child: Image(
              image: AssetImage(image),
              filterQuality: FilterQuality.high,
              height: width>1000?width / 30:width/12,
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                height: 2,
                fontSize: width>1000?width / 60:width/20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: width / 100,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width>1000?0:width/20),
            child: Text(
              description,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width>1000?width / 80:width/30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
  Widget buildSkill(String skill, String image) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: width / 30,
        ),
        Text(
          skill,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'DM Sans',
              height: 2,
              fontSize: width / 80,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }


}

class HorizontalImageScrollerAnimation extends StatefulWidget {
  @override
  _HorizontalImageScrollerAnimationState createState() =>
      _HorizontalImageScrollerAnimationState();
}

class _HorizontalImageScrollerAnimationState
    extends State<HorizontalImageScrollerAnimation> {
  late Timer _timer;
  late ScrollController _scrollController;
  double _scrollIncrement = 1.0; // Adjust scrolling speed as needed

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrolling();
  }

  void _startScrolling() {
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (_scrollController.hasClients) {
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        double newScrollPosition = currentScroll + _scrollIncrement;
        if (newScrollPosition >= maxScrollExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.animateTo(newScrollPosition,
              duration: Duration(milliseconds: 30), curve: Curves.linear);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Widget buildSkill(String skill, String image) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width/30),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: width / 10,
          ),
          Text(
            skill,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'DM Sans',
                height: 2,
                fontSize: width / 40,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 1.2, // Set width of container
      height: width / 4.5, // Set height of container
      color: Colors.transparent,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 12 * 2, // Repeating the list twice for seamless scrolling
        itemBuilder: (context, index) {
          List<Widget> skills = [
            buildSkill('Flutter', 'assets/images/10210182191579517842-128.png'),
            buildSkill('Dart', 'assets/images/17985894551536211770-128.png'),
            buildSkill('Firebase', 'assets/images/6247864081536298180-128.png'),
            buildSkill('GitHub', 'assets/images/3842828341530103314-128.png'),
            buildSkill('VS Code', 'assets/images/14178750871552037061-128.png'),
          ];

          return Padding(
            padding: EdgeInsets.all(width / 200),
            child: skills[index % skills.length],
          );
        },
      ),
    );
  }
}
