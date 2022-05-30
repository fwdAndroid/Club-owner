import 'package:club_owner/main/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../summary.dart';

class Club_Life extends StatefulWidget {
 var snap;
  Club_Life({Key? key, required this.snap}) : super(key: key);

  @override
  State<Club_Life> createState() => _Club_LifeState();
}

class _Club_LifeState extends State<Club_Life> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff060124),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Padding(
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
                      );
                    }
                  ),
                
                  
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20,bottom: 20),
                  child: Center(child: Image.network(widget.snap['photoURL'],fit: BoxFit.cover,))),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: ListTile(
                      title: Text(
                          'Price',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                       widget.snap['eventprice'].toString() == null
                            ? 'No Data Found'
                            :widget.snap['eventprice']+"\$",
                        style: TextStyle(color: Color(0xff818194)),
                      ),
                      )),
              Divider(
                color: Colors.white54,
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Description',
                    style: TextStyle(color: Color(0xffF01454), fontSize: 14),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Text(
                    widget.snap['eventDesc'] == null
                            ? 'No Data Found'
                            :widget.snap['eventDesc'],
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                    textAlign: TextAlign.justify,
                  )),
              
        
              // Container(
              //   margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Image.asset('assets/image.png'),
              //       ),
              //       Expanded(child: ListTile(
              //          title: Text(
              //           'Steven Comvalius',
              //           style: TextStyle(color: Colors.white),
              //         ),
              //         subtitle: Text(
              //           "Owner",
              //           style: TextStyle(color: Color(0xffF01454)),
              //         ),
              //       )),
              //       Container(
              //         height: 45,
              //         width: 45,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.white
              //         ),
              //         child: Icon(Icons.email,color: Colors.black,),
              //       ),
              //       SizedBox(width: 5,),
              //        Container(
              //         height: 45,
              //         width: 45,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.white
              //         ),
              //         child: Icon(Icons.phone,color: Colors.black,),
              //       ),
              //        SizedBox(width: 5,),
              //     ],
              //   ),
              // ),
        
        
        
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Location',
                    style: TextStyle(color: Color(0xffF01454), fontSize: 20),
                  )),

                  Container(
                                      margin: EdgeInsets.only(top: 10, left: 20),

                    child: Text( widget.snap['eventaddress'] == null
                            ? 'No Data Found'
                            :widget.snap['eventaddress'],style: TextStyle(color: Colors.white54),)),
                     Container(
                                      margin: EdgeInsets.only(top: 10, left: 20,bottom: 10,right: 20),

                    child: Image.asset('assets/map.png'))
            ],
          ),
        ),
      ),
    );
  }
}
