import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/colors.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({super.key});

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  final Uri clinikx=Uri.parse('');
  final Uri lumix=Uri.parse('');
  final Uri movie=Uri.parse('');
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width > 1000 ? width / 8 : width / 10),
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                    color: green,
                    thickness: 2,
                  )),
              Text(
                '  PROJECTS  ',
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
                  )),
            ],
          ),
        ),
        SizedBox(
          height: width>1000?width / 10:width/20,
        ),
        width > 1000
            ? Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 10),
          child: Container(
            width: width / 1.35,
            height: width / 3.5,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'company project',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 90,
                            fontWeight: FontWeight.w600,
                            color: green),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Text(
                        'Grand Desi Paarta',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 60,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Container(
                        width: width / 2.4,
                        height: width / 4.2,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(width / 80),
                            color: grey),
                        child: Padding(
                          padding: EdgeInsets.all(width / 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                'Grand Desi Paratha is a food delivery app with flexible subscription plans for one week, one month, or three months. It offers daily meals for breakfast and afternoon, with the menu changing regularly. Customers can order food and provide their location for delivery straight to their door',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 120,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: width / 180,
                              ),
                              Text(
                                'Contribution:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                ' My contribution involved developing the front-end pages, onboarding screens, implementing basic backend functionality, and adding animations to enhance the user experience.',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 120,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: width / 180,
                              ),
                              Text(
                                'Software Stack:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: width / 120,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildStackUsed('Flutter',
                                          'assets/images/10210182191579517842-128.png'),
                                      SizedBox(
                                        width: width / 80,
                                      ),
                                      buildStackUsed('Dart',
                                          'assets/images/17985894551536211770-128.png'),
                                      SizedBox(
                                        width: width / 80,
                                      ),
                                      buildStackUsed('Firebase',
                                          'assets/images/6247864081536298180-128.png'),
                                      SizedBox(
                                        width: width / 100,
                                      ),
                                      buildStackUsed('GitHub',
                                          'assets/images/3842828341530103314-128.png')
                                    ],
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (await canLaunchUrl(clinikx)) {
                                          await launchUrl(clinikx, mode: LaunchMode.externalApplication);
                                        } else {
                                          throw 'Could not launch $clinikx';
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: grey,
                                            borderRadius:
                                            BorderRadius.circular(
                                                width / 180),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: green,
                                                  spreadRadius: 1,
                                                  blurRadius: 1)
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width / 100,
                                              vertical: width / 180),
                                          child: Text(
                                            'LINK',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w800,
                                                color: Colors.white,
                                                fontFamily: 'DM Sans',
                                                fontSize: width / 80,
                                                letterSpacing: 1.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: width / 3,
                    height: width / 4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/grand desi pratha.PNG'),
                            fit: BoxFit.cover)),
                    child: Container(
                      width: width / 3,
                      height: width / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            green,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'company project',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 40,
                  fontWeight: FontWeight.w600,
                  color: green),
            ),
            SizedBox(
              height: width / 90,
            ),
            Text(
              'Grand Desi Paratha',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: width / 90,
            ),
            Container(
              width: width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 40),
                  color: grey),
              child: Padding(
                padding: EdgeInsets.all(width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Grand Desi Paratha is a food delivery app with flexible subscription plans for one week, one month, or three months. It offers daily meals for breakfast and afternoon, with the menu changing regularly. Customers can order food and provide their location for delivery straight to their door',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: width / 90,
                    ),
                    Text(
                      'Contribution:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      ' My contribution involved developing the front-end pages, onboarding screens, implementing basic backend functionality, and adding animations to enhance the user experience.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: width / 90,
                    ),
                    Text(
                      'Software Stack:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildStackUsed('Flutter',
                                'assets/images/10210182191579517842-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('Dart',
                                'assets/images/17985894551536211770-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('Firebase',
                                'assets/images/6247864081536298180-128.png'),
                            SizedBox(
                              width: width / 50,
                            ),
                            buildStackUsed('GitHub',
                                'assets/images/3842828341530103314-128.png')
                          ],
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunchUrl(clinikx)) {
                                await launchUrl(clinikx, mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch $clinikx';
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius:
                                  BorderRadius.circular(width / 90),
                                  boxShadow: [
                                    BoxShadow(
                                        color: green,
                                        spreadRadius: 1,
                                        blurRadius: 1)
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width / 50,
                                    vertical: width / 90),
                                child: Text(
                                  'LINK',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 40,
                                      letterSpacing: 1.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: width / 10,
        ),
        width > 1000
            ? Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 10),
          child: Container(
            width: width / 1.35,
            height: width / 3.5,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company project',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 90,
                            fontWeight: FontWeight.w600,
                            color: green),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Text(
                        'Rent a chair',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 60,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Container(
                        width: width / 2.4,
                        height: width / 4.3,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(width / 80),
                            color: grey),
                        child: Padding(
                          padding: EdgeInsets.all(width / 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: width / 180,
                              ),
                              Text(
                                'This is a service providing application where user can book a professional stylist for his hair care to his nearest saloon basic the saloon owner will rent his chair for the stylist and the customer.Contribution: Implementing hair stylist part of the application, Admin Dashboard design and implementation and many frontend designs and backend works.',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 120,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: width / 60,
                              ),
                              Text(
                                'Software Stack:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: width / 120,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildStackUsed('Flutter',
                                          'assets/images/10210182191579517842-128.png'),
                                      SizedBox(
                                        width: width / 80,
                                      ),
                                      buildStackUsed('Dart',
                                          'assets/images/17985894551536211770-128.png'),
                                      SizedBox(
                                        width: width / 80,
                                      ),
                                      buildStackUsed('Firebase',
                                          'assets/images/6247864081536298180-128.png'),
                                    ],
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (await canLaunchUrl(lumix)) {
                                          await launchUrl(lumix, mode: LaunchMode.externalApplication);
                                        } else {
                                          throw 'Could not launch $lumix';
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: grey,
                                            borderRadius:
                                            BorderRadius.circular(
                                                width / 180),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: green,
                                                  spreadRadius: 1,
                                                  blurRadius: 1)
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width / 100,
                                              vertical: width / 180),
                                          child: Text(
                                            'LINK',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w800,
                                                color: Colors.white,
                                                fontFamily: 'DM Sans',
                                                fontSize: width / 80,
                                                letterSpacing: 1.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: width / 3,
                    height: width / 4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/RAC.png'),
                            fit: BoxFit.cover)),
                    child: Container(
                      width: width / 3,
                      height: width / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            green,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'personal project',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 40,
                  fontWeight: FontWeight.w600,
                  color: green),
            ),
            SizedBox(
              height: width / 90,
            ),
            Text(
              'Rent A Chair',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: width / 180,
            ),
            Container(
              width: width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 40),
                  color: grey),
              child: Padding(
                padding: EdgeInsets.all(width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width / 90,
                    ),
                    Text(
                      'This is a service providing application where user can book a professional stylist for his hair care to his nearest saloon basic the saloon owner will rent his chair for the stylist and the customer.Contribution: Implementing hair stylist part of the application, Admin Dashboard design and implementation and many frontend designs and backend works.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: width / 30,
                    ),
                    Text(
                      'Software Stack:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildStackUsed('Flutter',
                                'assets/images/10210182191579517842-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('Dart',
                                'assets/images/17985894551536211770-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('Firebase',
                                'assets/images/6247864081536298180-128.png'),
                          ],
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunchUrl(lumix)) {
                                await launchUrl(lumix, mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch $lumix';
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius:
                                  BorderRadius.circular(width / 90),
                                  boxShadow: [
                                    BoxShadow(
                                        color: green,
                                        spreadRadius: 1,
                                        blurRadius: 1)
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width / 50,
                                    vertical: width / 90),
                                child: Text(
                                  'LINK',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 40,
                                      letterSpacing: 1.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: width / 10,
        ),
        width > 1000
            ? Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 10),
          child: Container(
            width: width / 1.35,
            height: width / 3.5,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Company On going project',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 90,
                            fontWeight: FontWeight.w600,
                            color: green),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Text(
                        'Arthomed',
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: width / 60,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: width / 180,
                      ),
                      Container(
                        width: width / 2.4,
                        height: width / 4.3,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(width / 80),
                            color: grey),
                        child: Padding(
                          padding: EdgeInsets.all(width / 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: width / 180,
                              ),
                              Text(
                                "Arthomed is a comprehensive healthcare management system designed to streamline the operations of a healthcare facility. The system supports various roles, including receptionists, patients, doctors, and administrators, to efficiently manage patient appointments, treatments, and medical records.",
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 120,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: width / 80,
                              ),
                              Text(
                                'Software Stack:',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: width / 100,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: width / 120,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildStackUsed('Flutter',
                                          'assets/images/10210182191579517842-128.png'),
                                      SizedBox(
                                        width: width / 40,
                                      ),
                                      buildStackUsed('Dart',
                                          'assets/images/17985894551536211770-128.png'),
                                      SizedBox(
                                        width: width / 40,
                                      ),
                                      buildStackUsed('Firebase',
                                          'assets/images/6247864081536298180-128.png'),
                                      SizedBox(
                                        width: width / 50,
                                      ),
                                      buildStackUsed('GitHub',
                                          'assets/images/3842828341530103314-128.png')
                                    ],
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (await canLaunchUrl(movie)) {
                                          await launchUrl(movie, mode: LaunchMode.externalApplication);
                                        } else {
                                          throw 'Could not launch $movie';
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: grey,
                                            borderRadius:
                                            BorderRadius.circular(
                                                width / 180),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: green,
                                                  spreadRadius: 1,
                                                  blurRadius: 1)
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width / 100,
                                              vertical: width / 180),
                                          child: Text(
                                            'LINK',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w800,
                                                color: Colors.white,
                                                fontFamily: 'DM Sans',
                                                fontSize: width / 80,
                                                letterSpacing: 1.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: width / 3,
                    height: width / 4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/arthomed pung.PNG'),
                            fit: BoxFit.cover)),
                    child: Container(
                      width: width / 3,
                      height: width / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width / 80),
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            green,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Company project  in prcess',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 40,
                  fontWeight: FontWeight.w600,
                  color: green),
            ),
            SizedBox(
              height: width / 90,
            ),
            Text(
              'Arthomed',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: width / 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: width / 90,
            ),
            Container(
              width: width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 40),
                  color: grey),
              child: Padding(
                padding: EdgeInsets.all(width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width / 90,
                    ),
                    Text(
                      "Arthomed is a comprehensive healthcare management system designed to streamline the operations of a healthcare facility. The system supports various roles, including receptionists, patients, doctors, and administrators, to efficiently manage patient appointments, treatments, and medical records.",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: width / 40,
                    ),
                    Text(
                      'Software Stack:',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: width / 40,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: width / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildStackUsed('Java',
                                'assets/images/378554371540553613-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('SpringBoot',
                                'assets/images/11755973651551952107-128.png'),
                            SizedBox(
                              width: width / 40,
                            ),
                            buildStackUsed('MySQL',
                                'assets/images/19218518301553750371-128.png'),
                            SizedBox(
                              width: width / 50,
                             ),
                            buildStackUsed('GitHub',
                                'assets/images/3842828341530103314-128.png')
                          ],
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunchUrl(movie)) {
                                await launchUrl(movie, mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch $movie';
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(
                                      width / 90),
                                  boxShadow: [
                                    BoxShadow(
                                        color: green,
                                        spreadRadius: 1,
                                        blurRadius: 1)
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width / 50,
                                    vertical: width / 90),
                                child: Text(
                                  'LINK',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 40,
                                      letterSpacing: 1.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildStackUsed(String skill, String image) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: width > 1000 ? width / 50 : width / 25,
        ),
        Text(
          skill,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'DM Sans',
              height: 1.5,
              fontSize: width > 1000 ? width / 100 : width / 50,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
