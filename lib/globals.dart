import 'package:flutter/material.dart';
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';

//current user
User userGlob = User(email: "", password: "", uid: "", usertype: "");
Student stuGlob = Student(
    classId: "", contact: "", email: "", name: "", rollNo: "", stuId: "");
Teacher teaGlob = Teacher(subject: "", tId: "", teacherName: "");
String uid = '';

//text controllers for login
TextEditingController uName = TextEditingController(text: "");
TextEditingController uPass = TextEditingController(text: "");

//text controller for adding student
TextEditingController stuName = TextEditingController(text: "");
TextEditingController stuPass = TextEditingController(text: "");
TextEditingController stuEmail = TextEditingController(text: "");
TextEditingController stuContact = TextEditingController(text: "");
TextEditingController stuID = TextEditingController(text: "");

//text controller for adding teacher
TextEditingController teaName = TextEditingController(text: "");
TextEditingController teaPass = TextEditingController(text: "");
TextEditingController teaEmail = TextEditingController(text: "");
TextEditingController teaContact = TextEditingController(text: "");
TextEditingController teaSubject = TextEditingController(text: "");

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
