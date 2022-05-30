import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club_owner/accounts/notification.dart';
import 'package:club_owner/drawerclass.dart';
import 'package:club_owner/events/add_events.dart';
import 'package:club_owner/events/show_event.dart';
import 'package:club_owner/models/user_model.dart';
import 'package:club_owner/provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  String? search;
  var isbool= false;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // UserModel provider = Provider.of<UserProvider>(context).getUser;

    var scalfoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff060124),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => NotifactionPage()));
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF01454),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddEvents()));
        },
        child: Icon(
          Icons.event,
          color: Colors.white,
        ),
      ),
      drawer: MyDrawer(),
      backgroundColor: Color(0xff060124),
      body: SafeArea(
        key: scalfoldKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         scalfoldKey.currentState!.openDrawer();
              //       },
              //       child: Container(
              //           margin: EdgeInsets.only(left: 10),
              //           width: 45,
              //           height: 45,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(100),
              //               color: Color(0xffF01454)),
              //           child: Image.asset('assets/sidenav.png')),
              //     ),
              //     InkWell(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (builder) => NotifactionPage()));
              //       },
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //             margin: EdgeInsets.only(left: 10),
              //             width: 45,
              //             height: 45,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(100),
              //                 color: Color.fromARGB(255, 1, 1, 2)),
              //             child: Icon(
              //               Icons.notifications,
              //               color: Colors.white,
              //             )),
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Welcome To Club House",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                    textAlign: TextAlign.start,
                  )),
              Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'What do you want to Explore?',
                    style: TextStyle(color: Colors.white54, fontSize: 15),
                    textAlign: TextAlign.start,
                  )),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: _searchController,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      // fillColor: Colors.grey,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF01454)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onChanged: (text) {
                      setState(() {
                        search = text;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Events',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'View all >',
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
             Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    margin: EdgeInsets.only(top: 10),
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection("Events")
                          .doc("eventslist")
                          .collection(FirebaseAuth.instance.currentUser!.uid)
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Some Thing Missing');
                        }
                       
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            // DocumentSnapshot products =
                            //     snapshot.data.documents[index];
                            return isbool ? CircularProgressIndicator(): ShowEvent(snap: snapshot.data!.docs[index]);
                          },
                        );
                       
                        
                      },
                      // stream: search == null ? FirebaseFirestore.instance
                      //             .collection('Events').doc('eventslist').collection(FirebaseAuth.instance.currentUser!.uid)
                      //             .get() :
                      //           FirebaseFirestore.instance
                      //             .collection('Events').doc('eventslist').collection(FirebaseAuth.instance.currentUser!.uid)
                      //             .where('eventaddress',
                      //                 isGreaterThanOrEqualTo: search).get(),
                      // builder: (context,
                      //   AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                      //       snapshot) {
                      // if (snapshot.connectionState == ConnectionState.waiting) {
                      //   return const Center(
                      //     child: CircularProgressIndicator(),
                      //   );
                      // }
                      // return Container(
                      //   height: 300,
                      //   child: ListView.builder(
              
                      //     itemCount: snapshot.data!.docs.length,
                      //     itemBuilder: (context, index) {
                      //     return  ShowEvent(snap: snapshot.data!.docs[index].data(),);
              
                      //     //  ListTile(
                      //     //   leading: Image.asset('assets/image.png'),
                      //     //   title: Text(
                      //     //     'Artist Name',
                      //     //     style: TextStyle(color: Colors.white, fontSize: 15),
                      //     //     textAlign: TextAlign.start,
                      //     //   ),
                      //     //   subtitle: Text(
                      //     //     'DJ',
                      //     //     style: TextStyle(color: Colors.white54, fontSize: 15),
                      //     //     textAlign: TextAlign.start,
                      //     //   ),
                      //     //   trailing:        Text(
                      //     //    '\$\2500 / month',
                      //     //   style: TextStyle(
                      //     //       color: Color(0xffF01454),
                      //     //       fontWeight: FontWeight.w600,
                      //     //       fontSize: 15),
                      //     //   textAlign: TextAlign.start,
                      //     // ),
                      //     // );
                      //   }),
                      // );
                    )),
              
            ],
          ),
        ),
      ),
    );
  }
}
