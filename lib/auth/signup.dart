import 'dart:typed_data';

import 'package:club_owner/auth/signin.dart';
import 'package:club_owner/resources/auth_merhods.dart';
import 'package:club_owner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  
      TextEditingController contactController = TextEditingController();
      TextEditingController addressController = TextEditingController();

      
  

Uint8List ? _image;
  //Looding Variable
  bool _isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.clear();
    passController.clear();
    cpassController.clear();
    userNameController.clear();
    contactController.clear();
    addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff060124),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Center(
                      child: Text(
                    'Create Club \n Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 35),
                    textAlign: TextAlign.center,
                  ))),
                  SizedBox(
                height: 23,
              ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 59, backgroundImage: MemoryImage(_image!))
                        : CircleAvatar(
                            radius: 59,
                            backgroundImage: NetworkImage(
                                'https://static.remove.bg/remove-bg-web/a6eefcd21dff1bbc2448264c32f7b48d7380cb17/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
                          ),
                    Positioned(
                        bottom: -10,
                        left: 70,
                        child: IconButton(
                            onPressed: () => selectImage(),
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            )))
                ],
              ),
                  ),
              SizedBox(
                height: 23,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: userNameController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Club Name',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                    obscureText: true,
                  controller: passController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  controller: cpassController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Re-Enter Password',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
 Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: contactController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Contact Number',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  controller: addressController,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF01454)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),

            
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                child: Center(
                  child: Text(
                    'Fill out the fields and click button to complete the registration process',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: signUpUsers,
                    child: _isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Text('Register'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF01454),
                      fixedSize: Size(325, 58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SignIn()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(color: Colors.white)),
                          TextSpan(
                              text: '  Sign in',
                              style: TextStyle(color: Color(0xffF01454))),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///Register Users
  signUpUsers() async {
    setState(() {
      _isLoading = true;
    });
    String rse = await AuthMethods().signUpUser(
      email: emailController.text,
      pass: passController.text,
      confrimPassword:cpassController.text,
      fullName: userNameController.text,
      contact: contactController.text,
      address: addressController.text,
      file: _image!
    );

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if (rse == 'sucess') {
      showSnakBar(rse, context);
     Navigator.push(context, MaterialPageRoute(builder: (builder) => SignIn()));
    } 
  }

  selectImage() async {
    Uint8List ui = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ui;
    });
  }
}
