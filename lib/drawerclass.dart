
import 'package:club_owner/accounts/get_help.dart';
import 'package:club_owner/accounts/privacy_policy.dart';
import 'package:club_owner/accounts/youraccout.dart';
import 'package:club_owner/auth/signin.dart';
import 'package:club_owner/main/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:club_owner/main/chat.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _isLoading = false;

  

  @override
  Widget build(BuildContext context) {

    // UserModel user = Provider.of<UserProvider>(context).getUser;      
    
    return _isLoading == true? 
    CircularProgressIndicator.adaptive()
    :
    Drawer(
         backgroundColor: Color(0xff060124),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff060124)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                // ListTile(
                //   leading: CircleAvatar(
                //       radius: 20,
                //       child: Image.network(
                //         // user.photoUrl!,
                //         (snapshot!.data() as Map<String, dynamic>)['photoUrl'],
                //         fit: BoxFit.cover,
                //       ),
                //       ),
                //   title: Text(
                //     // user.username!,
                //     (snapshot!.data() as Map<String, dynamic>)['username'],
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.w700,
                //         fontSize: 14),
                //   ),
                //   subtitle: Text(
                //     '4.5',
                //     style: TextStyle(color: Color(0xffEB5757)),
                //   ),
                // ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'General',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
              ListTile(
            leading: Icon(Icons.account_box,color:Colors.white),
            title: const Text(
              'Change Password',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) =>   YourAccount()));
            },
          ),
          ListTile(
            leading: Icon(Icons.chat,color:Colors.white),
            title: const Text(
              'Chat',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) =>   Chat()));
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.settings,color:Colors.white),
          //   title: const Text(
          //     'Settings',
          //     style: TextStyle(
          //         fontWeight: FontWeight.w500,
          //         fontSize: 14,
          //         color: Colors.white),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (builder) => Settings()));
          //   },
          // ),
              ListTile(
            leading: Icon(Icons.help,color:Colors.white),
            title: const Text(
              'Get Help',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) =>   GetHelp()));
            },
          ),
              ListTile(
            leading: Icon(Icons.privacy_tip,color:Colors.white),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) =>   PrivacyPolicy()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color:Colors.white),
            title: const Text(
              'Log Out',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
             FirebaseAuth.instance.signOut().then((value) => {
               Navigator.push(context, MaterialPageRoute(builder: (builder) => SignIn()))
             });
                         },
          ),
       
          // ListTile(
          //   leading: Image.asset(
          //     'assets/log.png',
          //     height: 30,
          //   ),
          //   title: const Text(
          //     'Log out',
          //     style: TextStyle(
          //         fontWeight: FontWeight.w500,
          //         fontSize: 14,
          //         color: Colors.white),
          //   ),
          //   onTap: () {
          //     DataBaseMethods().singnOut();
          //     // Update the state of the app.
          //     // ...
          //   },
          // ),
        ],
      ),
    );
  }
}

