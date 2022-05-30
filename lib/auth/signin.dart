import 'package:club_owner/auth/signup.dart';
import 'package:club_owner/main/home_page.dart';
import 'package:club_owner/resources/auth_merhods.dart';
import 'package:club_owner/utils/utils.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.clear();
    passController.clear();
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
              SizedBox(height: 30,),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Center(
                      child: Text(
                    'Sign In \n Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 35),
                    textAlign: TextAlign.center,
                  ))),

              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
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

              // Container(
              //    margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text('Do you want to Host Events?',style: TextStyle(color: Colors.white),),
              //       Image.asset('assets/switc.png')
              //     ],
              //   ),
              // ),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: loginUser,
                    child: _isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Text('Sign In'),
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
              SizedBox(height: 20,),
              Center(child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => SignUp()));
              }, child: Text('Dont Have an account, Create New Account',style: TextStyle(color: Color(0xffF01454),),)))
            ],
          ),
        ),
      ),
    );
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String rse = await AuthMethods().signIn(
      email: emailController.text,
      pass: passController.text,
    );

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if (rse == 'sucess') {
     Navigator.push(context, MaterialPageRoute(builder: (builder) => Home_Page()));
    } else {
      showSnakBar(rse, context);
    }
  }
}
