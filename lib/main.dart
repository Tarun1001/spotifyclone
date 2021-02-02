import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/library_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpotifyCloneApp(),
  ));
}

class SpotifyCloneApp extends StatefulWidget {
  @override
  _SpotifyCloneAppState createState() => _SpotifyCloneAppState();
}

class _SpotifyCloneAppState extends State<SpotifyCloneApp> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music_rounded,
                  color: Colors.white,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Library',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20))
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
