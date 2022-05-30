import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club_owner/events/add_events.dart';
import 'package:club_owner/models/event_model.dart';
import 'package:club_owner/resources/storagemethods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';


class FirestoreMethods {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

 
 //Add Event
   Future<String> addEvents({required Uint8List file,required String eventAddress,required String eventPrice,required String uid,
     required String eventName,required String eventDate, required String eventDesc}) async {
    String res = "Some Error";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage("eventpicture", file, true);

       String eventiD = Uuid().v1();
      EventMpdel eventModel = EventMpdel(
         
          uid: uid, eventAddress: eventAddress, eventPrice: eventPrice, photoURL: photoUrl, eventDate: eventDate, eventName: eventName, eventDesc: eventDesc,
         
          );

      ///Uploading Post To Firebase
      _firebaseFirestore
          .collection('Events')
          .doc("eventslist").collection(FirebaseAuth.instance.currentUser!.uid).doc(eventiD)
          .set(eventModel.toJson());
      res = 'Sucessfully Uploaded in Firebase';
    } catch (e) {
      res = e.toString();
    }

    return res;
  }


  // Delete
  Future<void> deleteEvent(String uid)async{
      String eventiD = Uuid().v1();
    try{
       _firebaseFirestore
          .collection('Events')
          .doc("eventslist").collection(FirebaseAuth.instance.currentUser!.uid).doc(eventiD).delete();    }catch(e){
      e.toString();
    }
  }
  ///Likes Post
  // Future<void> likePosts(String postId, String uid, List likes) async {
  //   try {
  //     if (likes.contains(uid)) {
  //       await _firebaseFirestore.collection('posts').doc(postId).update({
  //         "likes": FieldValue.arrayRemove([uid])
  //       });
  //     } else {
  //       await _firebaseFirestore.collection('posts').doc(postId).update({
  //         "likes": FieldValue.arrayUnion([uid])
  //       });
  //     }
  //   } catch (E) {
  //     print(E.toString());
  //   }
  // }

  // //Comment Post
  // Future<void> postComment(String postid, String text, String uid,String name,String profilePic) async {
  //   try {
  //     if(
  //       text.isNotEmpty){
  //         String commentID = Uuid().v1();
  //         await _firebaseFirestore.collection('posts').doc(postid).collection('comments').doc(commentID).set({
  //            'uid':uid,
  //           'profilePic' : profilePic,
  //           'name':name,
  //           'text':text,
  //           'commentId':commentID,
  //           'datePublished':DateTime.now() 
  //         });
  //       }else{
  //         print('Text is Empty');
  //       }
  //   } catch (e) {
  //     print(e.toString());
  //   }

  // }

  //  /// Deleting Posts///
  //   Future<void>deletePost(String postid)async{
  //     try{
  //         _firebaseFirestore.collection('posts').doc(postid).delete();
  //     }catch(e){}
  //   }



  //   //Follow User
  //   Future<void> followUser(
  //   String uid,
  //   String followId
  // ) async {
  //   try {
  //     DocumentSnapshot snap = await _firebaseFirestore.collection('users').doc(uid).get();
  //     List following = (snap.data()! as dynamic)['following'];

  //     if(following.contains(followId)) {
  //       await _firebaseFirestore.collection('users').doc(followId).update({
  //         'followers': FieldValue.arrayRemove([uid])
  //       });

  //       await _firebaseFirestore.collection('users').doc(uid).update({
  //         'following': FieldValue.arrayRemove([followId])
  //       });
  //     } else {
  //       await _firebaseFirestore.collection('users').doc(followId).update({
  //         'followers': FieldValue.arrayUnion([uid])
  //       });

  //       await _firebaseFirestore.collection('users').doc(uid).update({
  //         'following': FieldValue.arrayUnion([followId])
  //       });
  //     }

  //   } catch(e) {
  //     print(e.toString());
  //   }
  // }

  }
  

