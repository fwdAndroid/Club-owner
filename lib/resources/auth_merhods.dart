import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club_owner/models/user_model.dart';
import 'package:club_owner/resources/storagemethods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  
   Future<UserModel> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot snap = await firebaseFirestore
        .collection('clubowners')
        .doc(_auth.currentUser!.uid)
        .get();

    return UserModel.fromSnap(snap);
  }
  
//   Future<UserModel> getUserDetails() async {
//    User currentUser = _auth.currentUser!;
//    DocumentSnapshot documentSnapshot =await firebaseFirestore.collection('clubowners').doc(currentUser.uid).get();
//    return UserModel.fromSnap(documentSnapshot);
// }
 //Register User with Add User
 Future <String> signUpUser({
    required String email,
    required String fullName,
    required String pass,
    required String confrimPassword,
    required String contact,
    required String address,
    required Uint8List file
  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || pass.isNotEmpty || confrimPassword.isNotEmpty ) {
        UserCredential cred =  await _auth.createUserWithEmailAndPassword(email: email, password: pass);
        String photoURL = await StorageMethods().uploadImageToStorage('ClubPics', file, false);
          //Add User to the database with modal
          UserModel userModel = UserModel(
            
             uid:cred.user!.uid,
             email:email, 
             fullname: fullName,
             address: address,
             contactno: contact,
             photoURL: photoURL
             
              
           );
          await firebaseFirestore.collection('clubowners').doc(cred.user!.uid).set(userModel.toJson());
         
          res = 'sucess';
        }
     }catch(e){
    
       res = e.toString();
     }
     return res;
  }
  

//Sign User with Add User
 Future <String> signIn({
    required String email,
    required String pass,
  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || pass.isNotEmpty) {
        UserCredential cred =  await _auth.signInWithEmailAndPassword(email: email, password: pass);
        // String photoURL = await StorageMethods().uploadImageToStorage('ProfilePics', file, false);
         
          res = 'sucess';
        }
     }catch(e){
    
       res = e.toString();
     }
     return res;
  }
     

 ///Update
 Future<String> updateUser({required String uid,required String contact,required String address}) async{
   try{
 firebaseFirestore.collection('clubowners').doc(uid).update(
   {
      "contactno": contact,
      "address":address,
      
   }
 );
   }catch(e){
     e.toString();
   }
  return "Profie Update";
     
 }    
}