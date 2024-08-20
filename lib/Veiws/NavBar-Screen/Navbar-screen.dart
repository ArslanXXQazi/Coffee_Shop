import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Veiws/Home-screen/HomeScreen.dart';
import 'package:cofee_shop/Veiws/NavBar-Screen/FavouriteNav.dart';
import 'package:flutter/material.dart';

class Navbarscreen extends StatefulWidget {
  const Navbarscreen({super.key});

  @override
  State<Navbarscreen> createState() => _NavbarscreenState();
}

class _NavbarscreenState extends State<Navbarscreen> {

  int _selectedindex=0;

  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List WidgetOption=[
    HomeScreen(),
    Favouritenav(),
    Favouritenav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetOption.elementAtOrNull(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        //unselectedIconTheme: IconThemeData(color: Appcolor.brownish),
        //selectedLabelStyle: TextStyle(color: Appcolor.darkbrown),
        unselectedItemColor: Colors.black,
        selectedItemColor: Appcolor.darkbrown,
        //selectedIconTheme: IconThemeData(color: Appcolor.darkbrown),
        currentIndex: _selectedindex,
        onTap:navOntab,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),



        ],
      )
    );
  }
}
