import 'package:flutter/material.dart';
import 'package:pertemuan_10/pages/profile_page.dart';
import 'package:pertemuan_10/pages/tablayout_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  final List<Widget> _page = [ProfilePage(), TablayoutPage()];

  var currentPage = 0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: _page[currentPage],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentPage,
          onTap: (i) => setState(() => currentPage = i),
          items: [
            //Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person), 
              title: Text("Profile"),
              selectedColor: Colors.blue
            ),

            //Tablayout
            SalomonBottomBarItem(
              icon: Icon(Icons.table_view), 
              title: Text("TabLyout"),
              selectedColor: Colors.blue
            ),

          ]),
      ),
    );
  }
}