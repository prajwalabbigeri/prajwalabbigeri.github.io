import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ExperienceWidget extends StatefulWidget {
  const ExperienceWidget({super.key});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width > 1000 ? width / 8 : width / 10),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: green,
                  thickness: 2,
                ),
              ),
              Text(
                '  EXPERIENCE  ',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Amoneon',
                    fontSize: width > 1000 ? width / 40 : width / 20,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Divider(
                  color: green,
                  thickness: 2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width / 20,),
        width > 1000
            ? Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildExperience(
                'Software testing',
                'Qspiders',
                '2022 - 2022',
                'As a software testing trainee, I gained hands-on experience in SQL, manual testing, and MySQL. I collaborated with and received guidance from employees of top MNCs while working on various projects. This experience significantly enhanced my testing skills and provided me with practical insights into software quality assurance, further solidifying my foundation in software testing principles.',
              ),
              buildExperience(
                'App Developer',
                'Matrical Technologies',
                '2022 - current',
                'As an App Developer at Matrical Technologies, I successfully delivered several projects on time using Flutter, Firebase, and Dart. My role involved designing and developing mobile applications with a focus on seamless user experiences, integrating backend services, and ensuring smooth cross-platform performance. I worked efficiently under pressure while maintaining high-quality standards.',
              ),
              buildExperience(
                'Front_end Trainer ',
                'Matrical Technology',
                '3 batches',
                'Conducted comprehensive Flutter front-end development training for three batches.Focused on hands-on coding, best practices, and real-world application development.Provided personalized guidance and support to enhance learners understanding and skills.',
              ),
            ],
          ),
        )
            : CarouselSlider(
          options: CarouselOptions(
            height: width / 1.9,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            aspectRatio: 2.0,
            viewportFraction: 0.8,
          ),
          items: [
            buildExperience(
              'Software Testing',
              'Qspiders',
              '2022-2022',
              'Software Testing Trainee at Qspiders, I worked on various projects, collaborating with and receiving guidance from employees of top MNCs. This experience enhanced my technical skills and provided me with practical insights into full-stack development, further solidifying my foundation in software engineering principles. this is for the development but in need like the same in the testing,',
            ),
            buildExperience(
              'App Developer',
              'Matrical Technologies',
              '2022 - current',
              'As an App Developer at Matrical Technologies, I successfully delivered several projects on time using Flutter, Firebase, and Dart. My role involved designing and developing mobile applications with a focus on seamless user experiences, integrating backend services, and ensuring smooth cross-platform performance. I worked efficiently under pressure while maintaining high-quality standards.',
            ),
            buildExperience(
              'Front_end Trainer',
              'Matrical Technology',
              '3 batches ',
              'Conducted comprehensive Flutter front-end development training for three batches.Focused on hands-on coding, best practices, and real-world application development.Provided personalized guidance and support to enhance learners understanding and skills.',
            ),
          ],
        ),
      ],
    );
  }

  Widget buildExperience(String role, String company, String duration, String description) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width > 1000 ? width / 4.5 : width / 1.3,
      height: width > 1000 ? width / 4.2 : width / 1.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width > 1000 ? width / 80 : width / 40),
        color: grey,
      ),
      child: Padding(
        padding: EdgeInsets.all(width > 1000 ? width / 60 : width / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              role,
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: width > 1000 ? width / 60 : width / 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: width > 1000 ? width / 180 : width / 90,),
            Text(
              company,
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: width > 1000 ? width / 80 : width / 40,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              duration,
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: width > 1000 ? width / 80 : width / 40,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: width > 1000 ? width / 120 : width / 60,),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: width > 1000 ? width / 120 : width / 50,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}