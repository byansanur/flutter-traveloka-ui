import 'package:flutter/material.dart';
import 'package:flutter_http_client/pages/awal.dart';
import 'package:flutter_http_client/pages/inbox.dart';
import 'package:flutter_http_client/pages/pesanan.dart';
import 'package:flutter_http_client/pages/profile.dart';
import 'package:flutter_http_client/pages/simpan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // for selected bottom navigation with start from 0
  int _selectedIndex = 0;
  // import the file dart on state
  final _layoutPage = [
    Awal(), 
    Simpan(), 
    Pesanan(), 
    Inbox(), 
    Profile()
  ];

  // class void which in tab the item bottomNavigationBar
  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // bottomNavigationBarItem set icon and title
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text('Saved')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            title: Text('Orders')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Inbox')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile')
          ),
        ],
        // set type for fixed
        type: BottomNavigationBarType.fixed,
        // current index call int return 0
        currentIndex: _selectedIndex,
        // ontap selected state call void
        onTap: _onTabItem,
      ),
    );
  }
}
