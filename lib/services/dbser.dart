import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/test.dart';
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
        'email': user.email.trim(),
        'password': user.password.trim(),
        'usertype': user.usertype.trim(),
      });
    }
    return await userCollection.doc(user.uid).update({
      'email': user.email.trim(),
      'password': user.password.trim(),
      'usertype': user.usertype.trim(),
    });
  }

  //update student info
  Future updateStuInfo(Student student, bool isCreating) async {
    if (isCreating) {
      return await FirebaseFirestore.instance
          .collection('student')
          .doc(student.stuId.trim())
          .set({
        'classID': student.classId.trim(),
        'contact': student.contact.trim(),
        'name': student.name.trim(),
        'rollno': student.rollNo.trim(),
      });
    }
    return await FirebaseFirestore.instance
        .collection('student')
        .doc(student.stuId.trim())
        .update({
      'classID': student.classId.trim(),
      'contact': student.contact.trim(),
      'name': student.name.trim(),
      'rollno': student.rollNo.trim(),
    });
  }

  //update teacher info
  Future updateTeaInfo(Teacher tea, bool isCreating) async {
    if (isCreating) {
      return await FirebaseFirestore.instance
          .collection('teacher')
          .doc(tea.tId.trim())
          .set({
        'subject': tea.subject.trim(),
        'teachername': tea.teacherName.trim(),
      });
    }
    return await FirebaseFirestore.instance
        .collection('teacher')
        .doc(tea.tId.trim())
        .update({
      'subject': tea.subject.trim(),
      'teachername': tea.teacherName.trim(),
    });
  }

  //add material
  Future updateMaterial(String clss, String link, String subject) async {
    return await FirebaseFirestore.instance.collection('material').doc().set({
      'subjectID': subject.trim(),
      'classID': clss.trim(),
      'materialLink': link.trim()
    });
  }

  //get material
  Future getMaterial(String clss, String subject) async {
    return await FirebaseFirestore.instance
        .collection('material')
        .where('subjectID', isEqualTo: subject.trim())
        .where('classID', isEqualTo: clss.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //addlec
  Future updateLecture(String link, String cls) async {
    var v = await FirebaseFirestore.instance
        .collection('currentLec')
        .where('classID', isEqualTo: cls.trim())
        .get();
    return await FirebaseFirestore.instance
        .collection('currentLec')
        .doc(v.docs[0].id)
        .update({'link': link.trim()});
  }

  //get link
  Future getLink(String cls) async {
    return await FirebaseFirestore.instance
        .collection('currentLec')
        .where('classID', isEqualTo: cls.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //add fees details
  Future addFees(String email, String clss) async {
    var v = await FirebaseFirestore.instance
        .collection('student')
        .where('email', isEqualTo: email.trim())
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
  Future updateFees(String name, String email, int amtpaid) async {
    print(email.trim() + 'hello');
    var v = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email.trim())
        .where('usertype', isEqualTo: 'Student')
        .get();
    if (v.docs.isEmpty) {
      return 'Invalid email';
    }
    var u = await FirebaseFirestore.instance
        .collection('student')
        .doc(v.docs[0].id)
        .get();
    if (u.data()['name'] != name) {
      return 'Student Name and Email does not match';
    }
    var w = await FirebaseFirestore.instance
        .collection('fees')
        .doc(v.docs[0].id)
        .get();
    if (w.data()['amtpaid'] + amtpaid > w.data()['amttotal']) {
      return 'Please check the amount to be inserted';
    }
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
      'details': detail.trim(),
      'dtitle': dtitle.trim(),
      'studentID': g.uid.trim(),
      'subject': subject.trim(),
      'fileID': file.trim(),
      'isSolved': false
    });
  }

  //add notice
  Future addNotice(detail, dtitle, file) async {
    DateTime now = new DateTime.now();
    return await FirebaseFirestore.instance.collection('notices').doc().set({
      'details': detail.trim(),
      'title': dtitle.trim(),
      'fileID': file.trim(),
      'date': now.day,
      'month': now.month,
      'year': now.year
    });
  }

  //get notices
  Future<List> getNotices() async {
    return await FirebaseFirestore.instance
        .collection('notices')
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //update doubt
  Future solDoubt(link) async {
    var v = await FirebaseFirestore.instance
        .collection('doubt')
        .where('fileID', isEqualTo: link.trim())
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
        .where('fileID', isEqualTo: link.trim())
        .get()
        .then((value) => value.docs.map((e) => e).toList());
    return await FirebaseFirestore.instance
        .collection('solution')
        .doc(v[0].id)
        .set({'doubtID': v[0].id, 'solFile': file.trim(), 'teacherID': g.uid});
  }

  //get doubts students
  Future<List> getDoubtSt() async {
    return await FirebaseFirestore.instance
        .collection('doubt')
        .where('studentID', isEqualTo: g.uid)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //get doubt admin
  Future<List> getDoubtAdm() async {
    return await FirebaseFirestore.instance
        .collection('doubt')
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //get tests of student
  Future<List<TestData>> getTest(arg, value) async {
    var u = await FirebaseFirestore.instance
        .collection('test')
        .where(arg.trim(), isEqualTo: value.trim())
        .where('classID', isEqualTo: g.stuGlob.classId.trim())
        .get()
        .then((value) => value.docs.map((e) => e.id).toList());
    var u1 = await FirebaseFirestore.instance
        .collection('test')
        .where(arg.trim(), isEqualTo: value.trim())
        .where('classID', isEqualTo: g.stuGlob.classId.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
    if (u.isEmpty) {
      return [];
    }
    var v = await FirebaseFirestore.instance
        .collection('marks')
        .where('studentID', isEqualTo: g.uid)
        .where('testID', whereIn: u)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
    List<TestData> ret = [];
    TestData t;
    for (int i = 0; i < v.length; i++) {
      t = TestData(
          marks: int.parse(v[i]['marks']),
          test: u1[u.indexOf(v[i]['testID'])]['testType'],
          sub: value.trim());
      ret.add(t);
    }
    return (ret);
  }

  //get particular subjects
  Future<List> getcls() async {
    return await FirebaseFirestore.instance
        .collection('subjects')
        .where('subject', isEqualTo: g.teaGlob.subject.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()['class']).toList());
  }

  //get test data teacher
  Future<List> getTestt(arg, value) async {
    var u = await FirebaseFirestore.instance
        .collection('test')
        .where(arg.trim(), isEqualTo: value.trim())
        .where('subjectID', isEqualTo: g.teaGlob.subject.trim())
        .get()
        .then((value) => value.docs.map((e) => e.id).toList());
    var u1 = await FirebaseFirestore.instance
        .collection('test')
        .where(arg.trim(), isEqualTo: value.trim())
        .where('subjectID', isEqualTo: g.teaGlob.subject.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
    if (u.isEmpty) {
      return [];
    }
    var v = await FirebaseFirestore.instance
        .collection('marks')
        .where('testID', whereIn: u)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
    List<TestTea> ret = [];
    List ret2 = [];
    List ret3 = [];
    TestTea t;
    for (int i = 0; i < v.length; i++) {
      var x = await FirebaseFirestore.instance
          .collection('student')
          .doc(v[i]['studentID'])
          .get()
          .then((value) => value.data());
      t = TestTea(
          marks: int.parse(v[i]['marks']),
          test: u1[u.indexOf(v[i]['testID'])]['testType'],
          classID: value.trim(),
          name: x['rollno']);
      ret.add(t);
      ret2.add(x['rollno']);
    }
    ret2.toSet().toList();
    for (int i = 0; i < ret2.length; i++) {
      List<TestTea> li = [];
      for (int j = 0; j < ret.length; j++) {
        if (ret[j].name.trim() == ret2[i]) {
          li.add(ret[j]);
        }
      }
      ret3.add(li);
    }
    return (ret3);
  }

  //get solution
  Future<Map> getSoln(link) async {
    var v = await FirebaseFirestore.instance
        .collection('doubt')
        .where('fileID', isEqualTo: link.trim())
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
        .where('subject', isEqualTo: g.teaGlob.subject.trim())
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
        .where("class", isEqualTo: cls.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<List> allSch(String cls) async {
    return await FirebaseFirestore.instance
        .collection("schedule ")
        .where("class", isEqualTo: cls.trim())
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //all Tests
  Future<List> allTests(String cls) async {
    List s = await FirebaseFirestore.instance
        .collection("test")
        .where("classID", isEqualTo: cls.trim())
        .get()
        .then((value) => value.docs
            .map((e) => e.get("subjectID"))
            .toList()
            .toSet()
            .toList());
    s.sort();
    return s;
  }

  //all test tests
  Future<List> allTeststes(String cls) async {
    List s = await FirebaseFirestore.instance
        .collection("test")
        .where("classID", isEqualTo: cls.trim())
        .get()
        .then((value) =>
            value.docs.map((e) => e.get("testType")).toList().toSet().toList());
    s.sort();
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

  //get center info
  Future<List> getinfo() async {
    return await FirebaseFirestore.instance
        .collection('center')
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //update center info
  Future updateInfo(ctno, email) async {
    var j = await FirebaseFirestore.instance.collection('center').get();
    return await FirebaseFirestore.instance
        .collection('center')
        .doc(j.docs[0].id)
        .update({'ctno': ctno.trim(), 'email': email.trim()});
  }

  //delete Notice
  Future deleteNotice(String link) async {
    var v = await FirebaseFirestore.instance
        .collection('notices')
        .where('fileID', isEqualTo: link.trim())
        .get();
    return await FirebaseFirestore.instance
        .collection('notices')
        .doc(v.docs[0].id)
        .delete();
  }

  //add marks
  Future addMarks(email, marks, sub, test, cls) async {
    var u = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email.trim())
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
