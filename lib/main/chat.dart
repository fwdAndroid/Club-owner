import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Color(0xff060124),

      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Steven Comvalius',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                    Text('Owner',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),

        
          ],
        ),
        actions: [
          Image.asset('assets/vert.png',height: 55,width: 55,)
        ],
        backgroundColor: Color(0xffF01454),
    toolbarHeight:MediaQuery.of(context).size.height/6,
    leading: Image.asset('assets/image.png'),
    shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.vertical(
        bottom: new Radius.elliptical(50, 56.0),
      ),
    ),
  ),
  body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        Image.asset('assets/pink.png') ,
        Image.asset('assets/sms.png',),
         Image.asset('assets/pink.png'),
          Container(),
          Container(),
          Container(
            height: 22,
          ),
         Container(
           height: 100,
           padding: EdgeInsets.all(10),
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffF01454)
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffF01454)
                          ),
                          child: Icon(Icons.send_sharp,color: Colors.white,),
                        ),
                      ),
                      hintText: 'Type A Message',
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
                        borderSide: BorderSide(color: Color(0xffF01454)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
      ],
    ),
  
    );
  }
}