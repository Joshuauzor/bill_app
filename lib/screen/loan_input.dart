import 'dart:ui';

import 'package:flutter/material.dart';

class LoanInput extends StatefulWidget {
  @override
  _LoanInputState createState() => _LoanInputState();
}

class _LoanInputState extends State<LoanInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xff0072B1)),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.segment),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Color(0xff0072B1),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: 26.0, right: 27.0, top: 26, bottom: 26),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pay Bills',
                          style: TextStyle(
                            color: Color(0xff080426),
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'On Credit',
                          style: TextStyle(
                            color: Color(0xff080426),
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.0, right: 27.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Color(0xff0072B1)),
                    ),
                    padding: EdgeInsets.only(
                        left: 18, right: 22.44, top: 18, bottom: 16),
                    // color: Colors.amber,
                    height: 137,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pay Bills With a Loan',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Manage your financial life',
                              style: TextStyle(
                                color: Color(0xff74788D),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            ImageIcon(
                              AssetImage('assets/images/vector.png'),
                              color: Color(0xff0072B1),
                              size: 59.12,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Up to ₦10 milion',
                              style: TextStyle(
                                color: Color(0xff0072B1),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // bottom navigator
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: Color(0xff0072B1),
        unselectedItemColor: Color(0xFFB0B9C1),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home.png'),
              color: Color(0xff0072B1),
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cached),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Loan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
