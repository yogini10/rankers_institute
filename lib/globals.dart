import 'package:flutter/material.dart';
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';

//current user
User userGlob = User();
Student stuGlob = Student();
Teacher teaGlob = Teacher();
String uid = '';

//text controllers for login
TextEditingController uName = TextEditingController();
TextEditingController uPass = TextEditingController();

//text controller for adding student
TextEditingController stuName = TextEditingController();
TextEditingController stuPass = TextEditingController();
TextEditingController stuEmail = TextEditingController();
TextEditingController stuContact = TextEditingController();
TextEditingController stuID = TextEditingController();

//screen width and height
double width;
double height;

//login page textfield's textstyles common with color varient
TextStyle loginpgstyles(color) => TextStyle(
      fontFamily: 'Lucida Fax',
      fontSize: 22,
      color: color,
    );

TextStyle adduserstyles(color) => TextStyle(
      fontFamily: 'Lucida Fax',
      fontSize: 16,
      color: color,
    );
