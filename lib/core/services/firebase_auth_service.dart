import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/execption.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<void> deleteUser() async {
    try {
      await FirebaseAuth.instance.currentUser!.delete();
    } catch (e) {
      log('Error deleting user: ${e.toString()}');
      throw CustomException(message: 'Failed to delete user');
    }
  }

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Update the user profile with the name
      await credential.user!.updateDisplayName(name);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception is FirebaseAuthException.createUserWithEmailAndPassword : ${e.toString()}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'باسورد الحساب الخاص بك ضعيف');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'ذلك البريد الالكتروني مستخدم من قبل');
      } else {
        throw CustomException(message: 'حدث خطأ ما, حاول مرة اخرى');
      }
    } catch (e) {
      log('Unknown error during signup: ${e.toString()}');
      throw CustomException(message: 'خطأ غير معروف, حاول مرة اخرى');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception is FirebaseAuthException.signInWithEmailAndPassword: ${e.toString()}',
      );
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw CustomException(
          message: 'البريد الإلكتروني أو كلمة المرور غير صحيحة',
        );
      } else {
        throw CustomException(message: 'حدث خطأ ما, حاول مرة اخرى');
      }
    } catch (e) {
      log('Unknown error during login: ${e.toString()}');
      throw CustomException(message: 'خطأ غير معروف, حاول مرة اخرى');
    }
  }

  Future<User> signInWithGoogle() async {
    try {
      // Begin sign in process
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw CustomException(message: 'تم إلغاء تسجيل الدخول بواسطة Google');
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with Firebase
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      return userCredential.user!;
    } catch (e) {
      log('Error during Google sign in: ${e.toString()}');
      throw CustomException(message: 'فشل تسجيل الدخول بواسطة Google');
    }
  }

  Future<User> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Check login result
      if (loginResult.accessToken == null) {
        throw CustomException(message: 'تم إلغاء تسجيل الدخول بواسطة Facebook');
      }

      // Create a credential from the access token
      final credential = FacebookAuthProvider.credential(
        loginResult.accessToken!.tokenString,
      );

      // Sign in with Firebase
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      return userCredential.user!;
    } catch (e) {
      log('Error during Facebook sign in: ${e.toString()}');
      throw CustomException(message: 'فشل تسجيل الدخول بواسطة Facebook');
    }
  }
}
