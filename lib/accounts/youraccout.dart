import 'package:flutter/material.dart';

class YourAccount extends StatefulWidget {
  const YourAccount({ Key? key }) : super(key: key);

  @override
  State<YourAccount> createState() => _YourAccountState();
}

class _YourAccountState extends State<YourAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                 backgroundColor: Color(0xff060124),
    body: Column(
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
                          'Your Account',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                      ),
                      Text('data')
                    ],
                  ),
                  Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
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
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
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
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
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
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    
                    hintText: 'Re-enter Password',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    // fillColor: Colors.grey,
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
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
              Spacer(),
                Container(
                margin: EdgeInsets.only(top: 20,bottom: 20),
                child: Center(
                  child: ElevatedButton(
  onPressed: () {
 //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ClubDetails()));
  },
  child: Text('Updated'),
  style: ElevatedButton.styleFrom(
    primary: Color(0xffF01454),
    fixedSize: Size(325, 58),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25), // <-- Radius
    ),),
),
                ),
              ),
      ],
    ),
      ),
    );
  }
}