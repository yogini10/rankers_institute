import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rankers_institute/models/user.dart';

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
      return await userCollection.doc(uid).set({
        'email': user.email,
        'password': user.password,
        'usertype': user.usertype,
      });
    }
    return await userCollection.doc(uid).update({
      'email': user.email,
      'password': user.password,
      'usertype': user.usertype,
    });
  }

  //get current user
  Future<DocumentSnapshot> currentUser() async {
    return await userCollection.doc(uid).get();
  }

  Future<List> allClasses() async {
    return await FirebaseFirestore.instance
        .collection('classes')
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
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
        .collection("schedule")
        .where("classID", isEqualTo: cls)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }
}

//for only 5th standard

// classColl
//         .where('class', isEqualTo: '5th')
//         .get()
//         .then((value) => value.docs.map((e) => e.data()).toList());
