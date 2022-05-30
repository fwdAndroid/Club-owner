import 'package:club_owner/paymentpagecomplete.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({ Key? key }) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                backgroundColor: Color(0xff060124),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                ],
              ),
              Center(
                child: Container(
                    child: Text(
                  'Payment',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
              ),

              Container(
                margin: EdgeInsets.only(top: 20,left: 15,right: 15),
                child: Center(child: Image.asset('assets/pay.png'))),

                 Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Name of Card',
                    labelStyle: TextStyle(color: Color(0xffF01454)),
                    hintText: 'Fawad Kaleem',
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
                margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    labelStyle: TextStyle(color: Color(0xffF01454)),
                    hintText: '123436-1213-1331',
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

              Row(
                children: [
                  Expanded(child:   Container(
                margin: EdgeInsets.only(left: 20,),
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Expiration Date',
                    labelStyle: TextStyle(color: Color(0xffF01454)),
                    hintText: '12 Dec 2022',
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
              ),),
                 Expanded(child:   Container(
                margin: EdgeInsets.only( right: 20,),
                padding: EdgeInsets.all(10),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    labelStyle: TextStyle(color: Color(0xffF01454)),
                    hintText: '122',
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
              ),),
                ],
              ),
              Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Total',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      '\$2,520',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => PaymentPageComplete()));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffF01454),
                    fixedSize: Size(325, 58),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                )))
              
        ],
      ),
      ),
    );
  }
}