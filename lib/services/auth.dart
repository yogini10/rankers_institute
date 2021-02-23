import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as f;
import 'package:firebase_core/firebase_core.dart';
import 'package:rankers_institute/globals.dart' as g;
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
    String e, p;
    e = g.userGlob.email;
    p = g.userGlob.password;
    FirebaseApp app = await Firebase.initializeApp(
        name: 'Secondary', options: Firebase.app().options);
    f.User user;
    try {
      f.UserCredential result = await f.FirebaseAuth.instanceFor(app: app)
          .createUserWithEmailAndPassword(email: email, password: password);
      user = result.user;
      DatabaseServices(uid: user.uid).updateUserInfo(
          m.User(
              email: email,
              password: password,
              usertype: usertype,
              uid: user.uid),
          true);
    } catch (e) {
      await app.delete();
      return null;
    }
    await _auth.signOut();
    await app.delete();
    try {
      f.UserCredential result2 =
          await _auth.signInWithEmailAndPassword(email: e, password: p);
      f.User user2 = result2.user;
    } catch (e) {
      print('hello');
    }
    return userInApp(user);
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
