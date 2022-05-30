import 'dart:typed_data';

import 'package:club_owner/main/home_page.dart';
import 'package:club_owner/resources/firestore_methods.dart';
import 'package:club_owner/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddEvents extends StatefulWidget {
  const AddEvents({ Key? key }) : super(key: key);

  @override
  State<AddEvents> createState() => _AddEventsState();
}

class _AddEventsState extends State<AddEvents> {
  TextEditingController eventName = TextEditingController();
  TextEditingController eventDate = TextEditingController();
  TextEditingController eventPrice = TextEditingController();
    TextEditingController eventLocation = TextEditingController();
    TextEditingController eventDesc = TextEditingController();
   Uint8List ?_image;
     bool _isLoading = false;

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    eventName.clear();
    eventDate.clear();
    eventPrice.clear();
    eventDesc.clear();
    
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
                  backgroundColor: Color(0xff060124),
           elevation: 0,
          centerTitle: true,
          title: Text('Add Events'),
        ),
        backgroundColor: Color(0xff060124),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                              backgroundImage: AssetImage(
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
        
                     Container(
                  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    controller: eventName,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Event Name',
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:  Border.all(
                            color: Colors.white
                          )
                        ),
                  height: 200,      
                                  margin: EdgeInsets.only(top: 10, right: 18, left: 18),
        
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    controller: eventDesc,
                    autofocus: false,
                    maxLength: 20,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Event Description',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      
                      // fillColor: Colors.grey,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 6.0, top: 8.0),
                     
                    ),
                  ),
                ),
        
                 Container(
                  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: eventDate,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Event Date',
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
                    controller: eventPrice,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Price\$',
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
                    controller: eventLocation,
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Location',
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
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        registerEvent();
                         Navigator.push(context, MaterialPageRoute(builder: (builder) => Home_Page()));
                      },
                      child: _isLoading
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Text('Add Event'),
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
        
            ],
          ),
        ),
      ),
    );
  }

  selectImage() async {
    Uint8List ui = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ui;
    });
  }

 registerEvent() async {
    setState(() {
      _isLoading = true;
    });
    String res = await FirestoreMethods().addEvents(
      eventAddress: eventLocation.text,
      eventDate: eventDate.text,
      eventName: eventName.text,
      eventPrice: eventPrice.text,
      eventDesc:eventDesc.text,
      file: _image!, uid: FirebaseAuth.instance.currentUser!.uid,
      
    );

    print(res);
    setState(() {
      _isLoading = false;
    });
    if (res == 'sucess') {
      showSnakBar(res, context);
    
    } 
  }
}