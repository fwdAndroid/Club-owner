
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
 String uid;
  String email;
  String fullname;
  String contactno;
  String address;
  String photoURL;

  UserModel(
      {required this.uid,
      required this.email,
      required this.fullname,
      required  this.address,
     required this.contactno,
     required this.photoURL});







  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'fullname': fullname,
        'uid': uid,
        'email': email,
        'contactno': contactno,
        'address': address,
        'photoURL': photoURL,
      };

  ///
  static UserModel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return UserModel(
      uid:'uid',
      email: 'email',
      fullname: 'fullname',
      contactno: 'contactno',
      address: 'address',
      photoURL: 'photoURL',
    );
  }

  

  
}
