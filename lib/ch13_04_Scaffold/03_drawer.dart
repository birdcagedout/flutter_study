import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  var _selectedIndex = 0;

  final List<Widget> _bottomNavigationSelected = [
    Text('First Screen', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    Text('Second Screen', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    Text('Third Screen', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    Text('Fourth Screen', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
  ];

  void _onBottomNavigationBarTapped(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // *********************
      // appBar
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('AppBar 연습'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/homescreen/greensea.jpg'),
                fit: BoxFit.fill,
              )
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Container(
            height: 48,
            alignment: Alignment.center,
            child: Text('AppBar Bottom part'),
          ),
        ),
      ),


      // ********************
      // body
      body: Center(
        child: _bottomNavigationSelected.elementAt(_selectedIndex),
      ),


      // ********************
      // bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,        // fixedColor(선택한item컬러), backgroundColor만 가능
        type: BottomNavigationBarType.shifting,   // selectedItemColor, unselectedItemColor만 가능
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black26,
        // fixedColor: Colors.amber,
        // backgroundColor: Colors.green,
        onTap: _onBottomNavigationBarTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "First",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Second",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Third",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: "Fourth",
            backgroundColor: Colors.green,
          ),
        ],
      ),


      // **********************
      // drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Drawer header"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/face.png"),
                  fit: BoxFit.fill,
                )
              ),
            ),
            ListTile(
              title: Text("한번 하기"),
              onTap: () {Navigator.of(context).pop();},
            ),
            ListTile(
              title: Text("두번 하기"),
              onTap: () {Navigator.of(context).pop();},
            ),
          ],
        ),
      ),
    );
  }
}
