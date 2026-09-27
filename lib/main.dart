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
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(color: Color(0xFF211E1F),
          ),
        ),
        backgroundColor: const Color(0xFFFFC107),
        actions: [
          const Icon(
            Icons.add,
            color: Color(0xFF49454F),
          ),
          const SizedBox(width: 20),
          const Icon(
            Icons.settings,
            color: Color(0xFF49454F),
          ),
          const SizedBox(width: 20),
          const Icon(
            Icons.phone,
            color: Color(0xFF49454F),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Container(
        color: const Color(0xFFFEF7FF),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // First Logo
              Column(
                children: [
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Color(0xFFEADDFF),
                    child: Icon(
                      Icons.icecream_outlined,
                      size: 150,
                      color: Color(0xFF21005D),
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Ice cream is very delicious right?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50),

              // Second Logo
              Column(
                children: [
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Color(0xFFEADDFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          size: 100,
                          color: Color(0xFF21005D),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 100,
                          color: Color(0xFF21005D),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Programming is not boring if you love it.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}