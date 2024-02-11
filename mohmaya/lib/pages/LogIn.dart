import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mohmaya/pages/HomeScreen.dart';

// class LogIn extends StatelessWidget {
//   const LogIn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _page[currentIndex],
//       bottomNavigationBar: GNav(
//         onTabChange: (index) => goToPage(index),
//         tabs: [
//           GButton(icon: Icons.home, text: 'Home'),
//         ],
//       ),
//     );
//   }
// }

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  int currentIndex = 0;
  void goToPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List _page = [
    HomeScreen(),
    Container(child: const Text('Search Screen')),
    Container(child: const Text('Favourite Screen')),
    Container(child: const Text('Profile Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[currentIndex],
      bottomNavigationBar: Container(
        color: Color.fromRGBO(2, 28, 57, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(2, 28, 57, 1),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromRGBO(236, 82, 33, 1),
            padding: EdgeInsets.all(16),
            onTabChange: (index) => goToPage(index),
            gap: 8,
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.favorite, text: 'Favourite'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
