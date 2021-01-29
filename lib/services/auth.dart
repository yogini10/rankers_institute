import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as f;
import 'package:rankers_institute/models/user.dart' as m;
import 'package:rankers_institute/services/dbser.dart';

class AuthServices {
  final f.FirebaseAuth _auth = f.FirebaseAuth.instance;

  //get current user
  m.User userInApp(f.User user) {
    return user == null ? null : m.User(uid: user.uid);
  }

  //streamof user login
  Stream<m.User> get userIsIn {
    return _auth.userChanges().map((event) => userInApp(event));
  }

  //to check if logged in
  Future isSomeoneIn() async {
    m.User user = userInApp(_auth.currentUser);
    if (user == null) {
      return false;
    }
    return true;
  }

  //to check current user
  Future<m.User> currentUser() async {
    m.User user = userInApp(_auth.currentUser);
    if (user == null) {
      return null;
    }
    DocumentSnapshot doc = await DatabaseServices(uid: user.uid).currentUser();
    user.email = doc.get('email');
    user.password = doc.get('password');
    user.usertype = doc.get('usertype');
    return user;
  }

  //get info of user with id
  Future<m.User> getUserWithId(String uid) async {
    m.User user = m.User(uid: uid);
    DocumentSnapshot doc = await DatabaseServices(uid: user.uid).currentUser();
    user.email = doc.get('email');
    user.password = doc.get('password');
    user.usertype = doc.get('usertype');
    return user;
  }

  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      f.UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      f.User user = result.user;
      return userInApp(user);
    } catch (e) {
      return null;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(
      String email, String password, String usertype) async {
    try {
      f.UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      f.User user = result.user;
      DatabaseServices(uid: user.uid).updateUserInfo(
          m.User(email: email, password: password, usertype: usertype), true);
      return userInApp(user);
    } catch (e) {
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
