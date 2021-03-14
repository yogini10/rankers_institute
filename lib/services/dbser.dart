import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/globals.dart' as g;

class DatabaseServices {
  final String uid;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference classColl =
      FirebaseFirestore.instance.collection('classes');
  final CollectionReference subColl =
      FirebaseFirestore.instance.collection('usertype');

  DatabaseServices({this.uid});

  Future updateUserInfo(User user, bool isCreating) async {
    if (isCreating) {
      return await userCollection.doc(user.uid).set({
        'email': user.email,
        'password': user.password,
        'usertype': user.usertype,
      });
    }
    return await userCollection.doc(user.uid).update({
      'email': user.email,
      'password': user.password,
      'usertype': user.usertype,
    });
  }

  //update student info
  Future updateStuInfo(Student student, bool isCreating) async {
    if (isCreating) {
      return await FirebaseFirestore.instance
          .collection('student')
          .doc(student.stuId)
          .set({
        'classID': student.classId,
        'contact': student.contact,
        'name': student.name,
        'rollno': student.rollNo,
      });
    }
    return await FirebaseFirestore.instance
        .collection('student')
        .doc(student.stuId)
        .update({
      'classID': student.classId,
      'contact': student.contact,
      'name': student.name,
      'rollno': student.rollNo,
    });
  }

  //update teacher info
  Future updateTeaInfo(Teacher tea, bool isCreating) async {
    if (isCreating) {
      return await FirebaseFirestore.instance
          .collection('teacher')
          .doc(tea.tId)
          .set({
        'subject': tea.subject,
        'teachername': tea.teacherName,
      });
    }
    return await FirebaseFirestore.instance
        .collection('teacher')
        .doc(tea.tId)
        .update({
      'subject': tea.subject,
      'teachername': tea.teacherName,
    });
  }

  //add material
  Future updateMaterial(String clss, String link, String subject) async {
    return await FirebaseFirestore.instance
        .collection('material')
        .doc()
        .set({'subjectID': subject, 'classID': clss, 'materialLink': link});
  }

  //addlec
  Future updateLecture(String link, String cls) async {
    var v = await FirebaseFirestore.instance
        .collection('currentLec')
        .where('classID', isEqualTo: cls)
        .get();
    return await FirebaseFirestore.instance
        .collection('currentLec')
        .doc(v.docs[0].id)
        .update({'link': link});
  }

  //get link
  Future getLink(String cls) async {
    return await FirebaseFirestore.instance
        .collection('currentLec')
        .where('classID', isEqualTo: cls)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //add fees details
  Future addFees(String email, String clss) async {
    var v = await FirebaseFirestore.instance
        .collection('student')
        .where('email', isEqualTo: email)
        .get();
    return await FirebaseFirestore.instance
        .collection('fees')
        .doc(v.docs[0].id)
        .set({'amtpaid': 0, 'amttotal': g.fees[clss]});
  }

  //get fees
  Future<DocumentSnapshot> getFees() async {
    return await FirebaseFirestore.instance.collection('fees').doc(uid).get();
  }

  //update fees details
  Future updateFees(String email, int amtpaid) async {
    var v = await FirebaseFirestore.instance
        .collection('student')
        .where('email', isEqualTo: email)
        .get();
    return await FirebaseFirestore.instance
        .collection('fees')
        .doc(v.docs[0].id)
        .update({'amtpaid': amtpaid});
  }

  //get current user
  Future<DocumentSnapshot> currentUser() async {
    return await userCollection.doc(uid).get();
  }

  //get student if current
  Future<DocumentSnapshot> currentStu() async {
    return await FirebaseFirestore.instance
        .collection('student')
        .doc(uid)
        .get();
  }

  //add doubt
  Future addDoubt(detail, dtitle, file, subject) async {
    return await FirebaseFirestore.instance.collection('doubt').doc().set({
      'details': detail,
      'dtitle': dtitle,
      'studentID': g.uid,
      'subject': subject,
      'fileID': file,
      'isSolved': false
    });
  }

  //update doubt
  Future solDoubt(link) async {
    var v = await FirebaseFirestore.instance
        .collection('doubt')
        .where('fileID', isEqualTo: link)
        .get()
        .then((value) => value.docs.map((e) => e).toList());
    return await FirebaseFirestore.instance
        .collection('doubt')
        .doc(v[0].id)
        .update({'isSolved': true});
  }

  //add solution
  Future addSoln(link, file) async {
    var v = await FirebaseFirestore.instance
        .collection('doubt')
        .where('fileID', isEqualTo: link)
        .get()
        .then((value) => value.docs.map((e) => e).toList());
    return await FirebaseFirestore.instance
        .collection('solution')
        .doc(v[0].id)
        .set({'doubtID': v[0].id, 'solFile': file, 'teacherID': g.uid});
  }

  //get doubts students
  Future<List> getDoubtSt() async {
    return await FirebaseFirestore.instance
        .collection('doubt')
        .where('studentID', isEqualTo: g.uid)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //get solution
  Future<Map> getSoln(link) async {
    var v = await FirebaseFirestore.instance
        .collection('doubt')
        .where('fileID', isEqualTo: link)
        .get()
        .then((value) => value.docs.map((e) => e).toList());
    return await FirebaseFirestore.instance
        .collection('solution')
        .doc(v[0].id)
        .get()
        .then((value) => value.data());
  }

  //get doubts teacher
  Future<List> getDoubtTe() async {
    return await FirebaseFirestore.instance
        .collection('doubt')
        .where('subject', isEqualTo: g.teaGlob.subject)
        .where('isSolved', isEqualTo: false)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //get teacher if current
  Future<DocumentSnapshot> currentTea() async {
    return await FirebaseFirestore.instance
        .collection('teacher')
        .doc(uid)
        .get();
  }

  //get admin if current
  Future<DocumentSnapshot> currentAdm() async {
    return await FirebaseFirestore.instance.collection('admin').doc(uid).get();
  }

  Future<List> allClasses() async {
    return await FirebaseFirestore.instance
        .collection('classes')
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //all subs of all classes
  Future allSubClass() async {
    return await FirebaseFirestore.instance.collection('subjects').get().then(
        (value) => value.docs
            .map((e) => e.data()['subject'])
            .toList()
            .toSet()
            .toList());
  }

  Future<List> allSubs(String cls) async {
    return await FirebaseFirestore.instance
        .collection('subjects')
        .where("class", isEqualTo: cls)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<List> allSch(String cls) async {
    return await FirebaseFirestore.instance
        .collection("schedule ")
        .where("class", isEqualTo: cls)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //all Tests
  Future<List> allTests(String cls) async {
    List s = await FirebaseFirestore.instance
        .collection("test")
        .where("classID", isEqualTo: cls)
        .get()
        .then((value) => value.docs
            .map((e) => e.get("subjectID"))
            .toList()
            .toSet()
            .toList());
    //s.sort();
    //.get("subjectID")
    s.length == 0 ? print('hey') : print(s);
    return s;
  }

  //all test tests
  Future<List> allTeststes(String cls) async {
    List s = await FirebaseFirestore.instance
        .collection("test")
        .where("classID", isEqualTo: cls)
        .get()
        .then((value) =>
            value.docs.map((e) => e.get("testType")).toList().toSet().toList());
    //s.sort();
    //.get("testType")
    print(s);
    return s;
  }

  //update schedule
  Future updateSch(classs, time, subject, day) async {
    var v = await FirebaseFirestore.instance
        .collection('schedule ')
        .where('class', isEqualTo: classs)
        .where('day', isEqualTo: day)
        .get();
    return await FirebaseFirestore.instance
        .collection('schedule ')
        .doc(v.docs[0].id)
        .update({
      time: subject,
    });
  }

  Future<List<Map>> getSched(String cls) async {
    var v = await FirebaseFirestore.instance
        .collection('schedule ')
        .where('class', isEqualTo: cls)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
    return v;
  }

  //add marks
  Future addMarks(email, marks, sub, test, cls) async {
    var u = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    var t = await FirebaseFirestore.instance
        .collection('test')
        .where('classID', isEqualTo: cls)
        .where('subjectID', isEqualTo: sub)
        .where('testType', isEqualTo: test)
        .get();
    await FirebaseFirestore.instance.collection('marks').doc().set(
        {'marks': marks, 'studentID': u.docs[0].id, 'testID': t.docs[0].id});
  }
}

//for only 5th standard

// classColl
//         .where('class', isEqualTo: '5th')
//         .get()
//         .then((value) => value.docs.map((e) => e.data()).toList());
