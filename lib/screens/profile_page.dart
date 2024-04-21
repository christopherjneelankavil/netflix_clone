import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/ui_setting.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 10,
            ),
            Center(
              child: Image.asset(
                'lib/assets/images/netflix_logo.png',
                height: 65,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'Who is watching Netflix?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.network(
                        'https://wallpapers.com/images/hd/netflix-profile-pictures-5yup5hd2i60x7ew3.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Text('Person 1'),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.network(
                        'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Text('Person 2'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.network(
                        'https://i.pinimg.com/originals/eb/05/eb/eb05eb6fb0880b5c811669b60b0278bb.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Text('Person 3'),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.network(
                        'https://pro2-bar-s3-cdn-cf1.myportfolio.com/dddb0c1b4ab622854dd81280840458d3/98032aebff601c1d993e12a0_rw_600.png?h=8030f4d5734548795c22da59ca72e3e1',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const Text('Person 4'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
