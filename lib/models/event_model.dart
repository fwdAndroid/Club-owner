import 'package:cloud_firestore/cloud_firestore.dart';

class EventMpdel {
 String uid;
  String eventName;
  String eventDate;
  String eventPrice;
  String eventAddress;
  String photoURL;
  String eventDesc;

  EventMpdel(
      {required this.uid,
      required this.eventDesc,
      required this.eventName,
      required this.eventDate,
      required  this.eventPrice,
     required this.eventAddress,
     required this.photoURL});







  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'eventname': eventName,
        'eventDesc':eventDesc,
        'uid': uid,
        'eventaddress': eventAddress,
        'eventdate': eventDate,
        'eventprice': eventPrice,
        'photoURL': photoURL,
      };

  ///
  static EventMpdel fromSnap(DocumentSnapshot snaps) {
    var snapshot = snaps.data() as Map<String, dynamic>;

    return EventMpdel(
      eventDesc: 'eventDesc',
      uid:'uid',
      eventName: 'eventname',
      eventAddress: 'eventaddress',
      eventDate: 'eventdate',
      eventPrice: 'eventprice',
      photoURL: 'photoURL',
    );
  }

  

  
}
