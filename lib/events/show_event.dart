import 'package:club_owner/main/club_life.dart';
import 'package:flutter/material.dart';

class ShowEvent extends StatefulWidget {
  var snap;
   ShowEvent({ Key? key,required this.snap });

  @override
  State<ShowEvent> createState() => _ShowEventState();
}

class _ShowEventState extends State<ShowEvent> {
  @override
  Widget build(BuildContext context) {
    return  
     ListTile(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (builder) => Club_Life(snap: widget.snap,)));
       },
                        leading: Container(
                          height: 50,
                          width: 100,
                          child: Image.network(widget.snap['photoURL'],fit: BoxFit.cover,)),
                        title: Text(
                           widget.snap['eventname'] == null
                            ? 'No Data Found'
                            :widget.snap['eventname'],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          widget.snap['eventdate'] == null
                            ? 'No Data Found'
                            :widget.snap['eventdate'],
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                          textAlign: TextAlign.start,
                        ),
                        trailing:        Text(
                          widget.snap['eventprice'] == null
                            ? 'No Data Found'
                            :widget.snap['eventprice'],
                        style: TextStyle(
                            color: Color(0xffF01454),
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                        textAlign: TextAlign.start,
                      ),
                      );
  }
}