import 'package:bill_app/screen/loan_input.dart';
import 'package:flutter/material.dart';

void main() => runApp(BillApp());

class BillApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Color(0xFFFFFFFF)),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoanInput(),
        //   '/result': (context) => ResultPage(),
      },
    );
  }
}
