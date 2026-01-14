import 'package:build_logic/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ValorantApp());
}

class ValorantApp extends StatelessWidget {
  const ValorantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // We point home to a separate class
      home: const MainScreen(), 
    );
  }
}

// --- NEW CLASS: This ensures the 'context' is below MaterialApp ---
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Riot Games", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
            Text("Valorant", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
          ],
        ),
      ),
      body: Container(
        width: double.infinity, // Ensures container takes full width like a <div>
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your Image Container
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 112, 112),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45, width: 3.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://shorturl.at/b7Wyl', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            
            // Your Play Now Button
            InkWell(
              onTap: () {
                // Now this context 'knows' about the Navigator!
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Welcomescreen()),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF4655), Color(0xFF1C1C1C)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Center(
                  child: Text("Play Now", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}