import 'package:club_owner/paymentpage.dart';
import 'package:flutter/material.dart';

class Summarys extends StatefulWidget {
  const Summarys({Key? key}) : super(key: key);

  @override
  State<Summarys> createState() => _SummarysState();
}

class _SummarysState extends State<Summarys> {
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
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
                'Summary',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 99,
              width: 325,
              decoration: BoxDecoration(
                  color: Color(0xffF01454),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/image.png',
                      fit: BoxFit.fill,
                      height: 99,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Artist Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'DJ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          child: Text(
                            '27 Apr 2022 | 01:00 AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Event & Premium Fee Details',
                style: TextStyle(
                  color: Color(0xffF01454),
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Club Fee',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      '\$2,500',
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
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Premium Fee',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      '\$25',
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
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Divider(
                  color: Colors.white54,
                )),
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
                      '\$2,525',
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
              margin: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                'Payment Method',
                style: TextStyle(
                  color: Color(0xffF01454),
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'ONE';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Credit Card',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                  Radio(
                    hoverColor: Colors.yellow,
                    focusColor: Colors.red,
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'TWO';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Apple Pay',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => PaymentPage()));
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
