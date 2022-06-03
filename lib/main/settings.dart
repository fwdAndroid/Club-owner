import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club_owner/accounts/get_help.dart';
import 'package:club_owner/accounts/notification.dart';
import 'package:club_owner/accounts/privacy_policy.dart';
import 'package:club_owner/accounts/youraccout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var userData = {};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getuser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff060124),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xffF01454)),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Text(
                          'Profile',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                      ),
                      Text(''),
                      Text(''),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.network(
                      userData['photoURL'].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        userData['fullname'].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => YourAccount()));
                      },
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF01454),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Cahnge Password',
                        style: TextStyle(
                          color: Color(0xffF01454),
                        ),
                      ),
                      subtitle: Text(
                        'You will get email to change the password',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffF01454),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => NotifactionPage()));
                      },
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF01454),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                          color: Color(0xffF01454),
                        ),
                      ),
                      subtitle: Text(
                        'App & clubs notifications',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffF01454),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => GetHelp()));
                      },
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF01454),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.question_mark,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Get Help',
                        style: TextStyle(
                          color: Color(0xffF01454),
                        ),
                      ),
                      subtitle: Text(
                        'Help center, call us, privacy policy',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffF01454),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => PrivacyPolicy()));
                      },
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF01454),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.shield,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xffF01454),
                        ),
                      ),
                      subtitle: Text(
                        'Privacy policy details',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffF01454),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }

  getuser() async {
    setState(() {
      isLoading = false;
    });
    try {
      var snap = await FirebaseFirestore.instance
          .collection('clubowners')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      userData = snap.data()!;
    } catch (e) {
      print(e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }
}
