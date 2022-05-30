import 'package:club_owner/models/user_model.dart';
import 'package:club_owner/resources/auth_merhods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier{
  //  late UserModel _users;
  //    AuthMethods _auth = AuthMethods();
  //   //Getting User Data
  //   UserModel get getUser => _users;

  //   //Refresh User
  //   Future<void> refreshUser() async{
  //     UserModel userModel = await _auth.getUserDetails();
  //     _users = userModel;
  //     notifyListeners();
  //   } 

  UserModel? _userModel;
  final AuthMethods _dataBaseMethods = AuthMethods();


  UserModel get getUser => _userModel!;

  Future<void> refreshUser()async{
    UserModel userModel = await _dataBaseMethods.getUserDetails();
    _userModel = userModel;
    notifyListeners();
    
  }
}