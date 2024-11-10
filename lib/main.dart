import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 247, 255),
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.amber,
        actions: [
          const Icon(Icons.add),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.settings),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.phone),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 234, 221, 255),
                child: Icon(
                  Icons.icecream_outlined,
                  size: 80,
                ),
              ),
            ),
            const Text(
              "Ice Cream is very delicious right?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
                child: CircleAvatar(
              radius: 80,
              backgroundColor: const Color.fromARGB(255, 234, 221, 255),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Icon(
                      Icons.chevron_left_outlined,
                      size: 80,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    child: const Icon(
                      Icons.chevron_right_outlined,
                      size: 80,
                    ),
                  ),
                ],
              ),
            ),),
            const Text(
              "Programming is not boring if you love it.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 234, 221, 255),
                child: Icon(
                  Icons.egg_outlined,
                  size: 80,
                ),
              ),
            ),
            const Text(
              "If you submit code directly copy from chatgpt then your mark will 0",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
