import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/screens/new_and_hot_screen.dart';
import 'package:netflix_clone/screens/search_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 65,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined),
                text: 'New & Hot',
              ),
            ],
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 184, 182, 182),
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            SearchScreen(),
            NewAndHotScreen()
          ],
        ),
      ),
    );
  }
}
