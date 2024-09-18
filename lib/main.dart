import 'package:flutter/material.dart';

void main() {
  runApp(InventoryApp());
}

class InventoryApp extends StatelessWidget {
  const InventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: true,
      title: 'InventoryApp',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(primaryColor: Colors.black),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory App', style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 24,
          color: Colors.white54),),
        backgroundColor: Colors.blueGrey,
        //centerTitle: true,
        titleSpacing: 8,
        toolbarHeight: 70,
        toolbarOpacity: 0.6,
        elevation: 6,
        actions: [
          IconButton(onPressed: ()
          {MySnackBar('Search Here', context);},
              icon: Icon(Icons.search)),
          IconButton(onPressed: ()
          {MySnackBar('Check Safety', context);},
              icon: Icon(Icons.safety_check)),
          IconButton(onPressed: ()
          {MySnackBar('Settings', context);},
              icon: Icon(Icons.settings)),
        ],
      ),//appbar
      floatingActionButton: FloatingActionButton(
          elevation: 8,
          backgroundColor: Colors.blueGrey,
          focusColor: Colors.blue,
          onPressed:(){
            MySnackBar('Call 999 for emergency', context);},
          child: Icon(Icons.call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar('This is your HomeBar Tab', context);
          }
          if(index==1){
            MySnackBar('This is the chat section', context);
          }
          if(index==2){
            MySnackBar('This is Profile section', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                    accountName: Text('Shah Moahammad Rizvi',style: TextStyle(
                      color: Colors.black,
                    ),),
                    accountEmail: Text('22203174@iubat.edu', style: TextStyle(
                      color: Colors.white,
                    ),),
                  currentAccountPicture: Align(alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('asset/img/SMR.jpg'),
                      radius: 50,
                    )
                  )
                ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                MySnackBar('This is Home Section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                MySnackBar('This is the profile section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Security'),
              onTap: (){
                MySnackBar('This is the security section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Donate'),
              onTap: (){
                MySnackBar('This the donation section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                MySnackBar('This is the settings section', context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountName: Text('Shah Moahammad Rizvi',style: TextStyle(
                    color: Colors.black,
                  ),),
                  accountEmail: Text('22203174@iubat.edu', style: TextStyle(
                    color: Colors.white,
                  ),),
                  currentAccountPicture: Align(alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('asset/img/SMR.jpg'),
                        radius: 50,
                      )
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                MySnackBar('This is Home Section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                MySnackBar('This is the profile section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Security'),
              onTap: (){
                MySnackBar('This is the security section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Donate'),
              onTap: (){
                MySnackBar('This the donation section', context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                MySnackBar('This is the settings section', context);
              },
            ),
          ],
        ),
      ),
    );
  }
}