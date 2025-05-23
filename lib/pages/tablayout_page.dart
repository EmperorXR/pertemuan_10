import 'package:flutter/material.dart';
import 'package:pertemuan_10/Components/appbar.dart';
import 'package:pertemuan_10/pages/profile_page.dart';

class TablayoutPage extends StatefulWidget{
  TablayoutPage({super.key});

  @override
  State<TablayoutPage> createState() => _TablayoutState();
}

class _TablayoutState extends State<TablayoutPage>{
  final List<Widget> _page = [ProfilePage()];

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleAppBar(),
    );
  }
}