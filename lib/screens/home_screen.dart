import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/profile_page.dart';
import 'package:netflix_clone/utils/ui_setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Row(
          children: [
            Image.asset(
              'lib/assets/images/netflix_logo.png',
              height: 60,
              width: 100,
            ),
            const SizedBox(width: 8),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfilePage();
                  },
                ),
              );
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  //height: 40,
                  width: 25,
                  child: Image.asset('lib/assets/images/profile.png'),
                )),
          ),
        ],
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
