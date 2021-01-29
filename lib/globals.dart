import 'package:flutter/material.dart';
import 'package:rankers_institute/models/user.dart';

//current user
User userGlob;

//screen width and height
double width;
double height;

//login page textfield's textstyles common with color varient
TextStyle loginpgstyles(color) => TextStyle(
      fontFamily: 'Lucida Fax',
      fontSize: 22,
      color: color,
    );
