import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name=TextEditingController();

  TextEditingController email=TextEditingController();

  TextEditingController message=TextEditingController();

  Future<void> _saveMessage() async {
    await FirebaseFirestore.instance.collection('messages').add({
      'name': name.text,
      'email': email.text,
      'message': message.text,
      'timestamp': FieldValue.serverTimestamp(),
    });

    // Clear fields after saving
    name.clear();
    email.clear();
    message.clear();

    // Optionally show a confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Thank you for reaching out! I\'ll will contact you soon.')),
    );
  }
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    if (value.length < 3) {
      return 'Name should contain minimum 3 characters';
    }
    if (value.length > 50) {
      return 'Name should not exceed 50 characters';
    }
    // Regular expression to check for special characters
    String pattern = r'^[a-zA-Z ]*$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Name should not contain special characters or numbers';
    }
    return null;
  }
  String? validateMessage(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter message';
    }
    if (value.length < 3) {
      return 'Message should contain minimum 3 characters';
    }
    return null;
  }
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }
    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
      caseSensitive: false,
    );
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width>1000?width / 8:width/10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 80), color: grey),
        child: Padding(
          padding: EdgeInsets.all(width / 40),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'CONTACT ME',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Amoneon',
                      fontSize: width>1000?width / 40:width/20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: width / 30,
                ),
                width>1000?Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: width/20,),
                        Row(
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: green,
                              size: width / 40,
                            ),
                            Text(
                              '  abbigeriprajwal07@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 80,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: width / 80,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: green,
                                  size: width / 40,
                                ),
                                Text(
                                  '  +91 9019365505',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 80,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width / 100,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: green,
                                  size: width / 40,
                                ),
                                Text(
                                  '  Karnataka, India',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 80,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    Container(
                      width: 2,
                      height: width / 6,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(width / 180)),
                          height: width / 30,
                          width: width / 3.6,
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal:width/100),
                            child: TextFormField(
                              validator: validateName,
                              controller: name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 100,
                                  fontWeight: FontWeight.w500
                              ),
                              decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  hintText: 'Your Name',
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(height: width/80,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(width / 180)),
                          height: width / 30,
                          width: width / 3.6,
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal:width/100),
                            child: TextFormField(
                              validator: validateEmail,
                              controller: email,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 100,
                                  fontWeight: FontWeight.w500
                              ),
                              decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  hintText: 'Your Email',
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(height: width/80,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(width / 180)),
                          height: width / 10,
                          width: width / 3.6,
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal:width/100),
                            child: TextFormField(
                              validator: validateMessage,
                              controller: message,
                              maxLines: 6,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 100,
                                  fontWeight: FontWeight.w500
                              ),
                              decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  hintText: 'Your Message',
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 100,
                                      fontWeight: FontWeight.w500
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(height: width/80,),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: (){
                              if(_formKey.currentState!.validate()){
                                _saveMessage();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(width/180),
                                  border: Border.all(color: Colors.white,width: 1)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal:width/100,vertical: width/180),
                                child: Text('SEND',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'DM Sans',
                                    fontSize: width / 80,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ):Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(width / 90)),
                      height: width / 10,
                      width: width / 1.2,
                      child: TextFormField(
                        validator: validateName,
                        controller: name,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontSize: width / 50,
                            fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration
                          (
                            filled: true,
                            fillColor: Colors.white10,
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            hintText: 'Your Name',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10,width: 1))),
                      ),
                    ),
                    SizedBox(height: width/40,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(width / 180)),
                      height: width / 10,
                      width: width / 1.2,
                      child: TextFormField(
                        validator: validateEmail,
                        controller: email,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontSize: width / 50,
                            fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white10,
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            hintText: 'Your Email',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10,width: 1))),
                      ),
                    ),
                    SizedBox(height: width/40,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(width / 90)),
                      height: width / 5,
                      width: width / 1.2,
                      child: TextFormField(
                        validator: validateMessage,
                        controller: message,
                        maxLines: 6,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontSize: width / 50,
                            fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white10,
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            hintText: 'Your Message',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DM Sans',
                                fontSize: width / 50,
                                fontWeight: FontWeight.w500
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10,width: 1))),
                      ),
                    ),
                    SizedBox(height: width/40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.mail_outline,
                                  color: green,
                                  size: width / 20,
                                ),
                                Text(
                                  '  abbigeriprajwal07@gmail.com',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 40,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: width / 40,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: green,
                                  size: width / 20,
                                ),
                                Text(
                                  '  +91 9019365505',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'DM Sans',
                                      fontSize: width / 40,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            if(_formKey.currentState!.validate()){
                              _saveMessage();
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width/90),
                                border: Border.all(color: Colors.white,width: 1)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal:width/50,vertical: width/90),
                              child: Text('SEND',style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'DM Sans',
                                  fontSize: width / 30,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
