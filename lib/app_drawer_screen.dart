import 'package:flutter/material.dart';

class AppDrawerScreen extends StatefulWidget {
  const AppDrawerScreen({super.key});

  @override
  State<AppDrawerScreen> createState() => _AppDrawerScreenState();
}

class _AppDrawerScreenState extends State<AppDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
backgroundColor: Colors.indigo,
       title:  Text('AppBar with hamburger button'),
       centerTitle: true,
     foregroundColor: Colors.white,
     ),
     drawer: Drawer(
      child:  ListView(
    // Important: Remove any padding from the ListView.
    //padding: EdgeInsets.all(20),
    children: [
      DrawerHeader( child: Image.asset('assets/icons8-flutter-100.png',
       width: 10,height: 10,
       ),),

      // const DrawerHeader(
        
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //   ),
      //   child: Text('Drawer Header'),
      // ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
          Navigator.pop(context);
        },
      ),
    ],
  ),
        
     )
      

      );
  }
}