import 'package:first_app/views/home_screen.dart';
import 'package:flutter/material.dart';

class BottomAppBarNavigation extends StatefulWidget{
  const BottomAppBarNavigation ({super.key});



  @override
  State<BottomAppBarNavigation> createState() => _BottomAppBarNavigationState();
}
class _BottomAppBarNavigationState extends State<BottomAppBarNavigation>{
  int _selectedIndex =0;
  final List<Widget> _widgetOptions = <Widget> [
  const HomeScreen(),
  const Text (
    'Index 1: Profile',
  ),
  ];
  void _onItemTapped (int index){
    setState(() {
      _selectedIndex =index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(child: 
      _widgetOptions.elementAt(_selectedIndex)
      ),

    
    bottomNavigationBar:BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon : Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon : Icon(Icons.person ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.green,
      onTap: _onItemTapped,
 
    ),
    );
  }

}