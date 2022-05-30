import 'package:club_owner/auth/signup.dart';
import 'package:flutter/material.dart';

class PaymentPageComplete extends StatefulWidget {
  const PaymentPageComplete({ Key? key }) : super(key: key);

  @override
  State<PaymentPageComplete> createState() => _PaymentPageCompleteState();
}

class _PaymentPageCompleteState extends State<PaymentPageComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF01454),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Spacer(),
          
          Center(child: Image.asset('assets/sa.png')),
          Spacer(),
          
            Container(
                margin: EdgeInsets.only(top: 30,bottom: 30),
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (builder) => MainScreen()));
                  },
                  child: Text('Goto Home',style: TextStyle(color: Color(0xffF01454)),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(325, 58),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                )))
        ],
      ),
    );
  }
}