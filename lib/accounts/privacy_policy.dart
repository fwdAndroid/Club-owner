import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                       Row(
                         children: [
                           Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ClipOval(
                              
                            child: Container(
                
                              color: const Color(0xffF01454),
                              height:35,
                              width: 35,
                              child: const Icon(Icons.arrow_back,color: Colors.white,),
                
                              
                            
                              ),
                            
                            ),
                  ),
                  SizedBox(width: 95,),
                  Container(child: Text('Privacy Policy',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),)
                         ],
                       ),
                        SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(child: 
                         Center(
                           child: Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt/nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\n............',
                           style:TextStyle(color: Colors.white) ,),
                         ),),
                       ),
            ],
          ),
        )
      ],),
      
    );
  }
}