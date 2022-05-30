import 'package:flutter/material.dart';

class NotifactionPage extends StatefulWidget {
  const NotifactionPage({ Key? key }) : super(key: key);

  @override
  State<NotifactionPage> createState() => _NotifactionPageState();
}

class _NotifactionPageState extends State<NotifactionPage> {
  bool isPopular=false;
   bool nosha=false;
    bool noshi=false;
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
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(child: const Text('Notifications',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                  ),),
                  Text('')
                ],
                       ),
                       SizedBox(height: 40,),
                       SwitchListTile(
                         activeColor: Color(0xffF01454),
                  title: Text('Do you want to receive notification\nabout new clubs',style: TextStyle(color: Colors.white),),
                  value: isPopular,
                  onChanged: (v) {
                    setState(() {
                      isPopular = !isPopular;
                    });
                  }), 
                   SizedBox(height: 40,),
                      SwitchListTile(
                        activeColor: Color(0xffF01454),
                  title: Text('Do you want to receive notification app\nupdates',style: TextStyle(color: Colors.white)),
                  value: nosha,
                  onChanged: (v) {
                    setState(() {
                      nosha = !nosha;
                    });
                  }), 
                  SizedBox(height: 40,),
                   SwitchListTile(
                     activeColor: Color(0xffF01454),
                  title: Text('Do you want to receive notification\nabout chats',style: TextStyle(color: Colors.white),),
                  value: noshi,
                  onChanged: (v) {
                    setState(() {
                      noshi = !noshi;
                    });
                  }),
                              
            ],
          ),
        )
      ],),
      
    );
  }
}