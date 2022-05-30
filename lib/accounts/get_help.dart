import 'package:flutter/material.dart';

class GetHelp extends StatefulWidget {
  const GetHelp({ Key? key }) : super(key: key);

  @override
  State<GetHelp> createState() => _GetHelpState();
}

class _GetHelpState extends State<GetHelp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  SizedBox(width: 80,),
                  Container(child: Text('Get Help',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                  ),),
               
                         ],
                       ),
                        const  Padding(
               padding:  EdgeInsets.all(30.0),
               child: TextField(
                  decoration: InputDecoration(
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                     borderSide: BorderSide(color: Color(0xffF01454), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xffF01454), width: 1.5),
                    ),
                    hintText: 'Title',
                    
                     hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffF01454),),
                  ),
                  // controller: myController,
                ),
             ),
             Center(
               child: Container(
                 width: 325,
                 height: 191,
                 child: TextField(
                  
                    decoration: InputDecoration(
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       borderSide: BorderSide(color: Color(0xffFFFFFF), width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xffFFFFFF), width: 0),
                      ),
                      hintText: 'Your Message',
                       hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffFFFFFF),),
                    ),
                    // controller: myController,
                  ),
               ),
             ),
                Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Center(
                   child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),                   child: ElevatedButton(
                          
              style: ElevatedButton.styleFrom(
                    primary:const  Color(0xffF01454),
                    minimumSize: const Size(350, 65),
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23)),
              ),
            onPressed: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ()));
            },
            child:const Text('Submit',style: TextStyle(fontSize: 20),
            
            ),)
            ),
                 ),
               ),       
            ],
          ),
        )
      ],),
      
    );
  }
}