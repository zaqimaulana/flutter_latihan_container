import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "judul aplikasi",
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color.fromARGB(255, 255, 7, 7),
        actions: const [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_tree, color: Colors.white),
          Icon(Icons.ac_unit, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔄 Container 1 dengan efek rotasi 15 derajat
          Transform.rotate(
            angle: 0.26, // 0.26 radian = 15 derajat
            child: Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30, left: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.yellow],
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: const Text(
                "Ini adalah teks di dalam container",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

        
          Transform.rotate(
            angle: -0.17, // -0.17 radian = -10 derajat
            child: Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30, left: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.white],
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: const Text(
                "Ini King Emyu",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
