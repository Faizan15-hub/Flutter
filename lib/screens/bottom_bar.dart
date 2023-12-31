
import 'package:flutter/material.dart';

import 'homescreen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();

}
class _BottomBarState extends State<BottomBar>{
  int _selectedindex=0;
  static final List<Widget>_widgetOptions=<Widget>[
  const Homescreen(),
const Text("Search"),
const Text("Tickets"),
const Text("Profile")
  ];
  void _onItemTapped(int index)
  {
    setState((){
      _selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body:  Center(child: _widgetOptions[_selectedindex],
      ),
bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedindex,
  onTap:_onItemTapped,
  elevation: 10,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  selectedItemColor: const Color.fromARGB(255, 41, 5, 172),
  unselectedItemColor: Colors.black,
  type:BottomNavigationBarType.fixed,
  
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
 BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
   BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Tickets"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
 ],
 ),
    );
  }
}
