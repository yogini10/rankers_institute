import 'package:flutter/material.dart';
import 'package:rankers_institute/models/user.dart';

//current user
User userGlob;
String uid;

//text controllers for login
TextEditingController uName = TextEditingController();
TextEditingController uPass = TextEditingController();

//screen width and height
double width;
double height;

//login page textfield's textstyles common with color varient
TextStyle loginpgstyles(color) => TextStyle(
      fontFamily: 'Lucida Fax',
      fontSize: 22,
      color: color,
    );
