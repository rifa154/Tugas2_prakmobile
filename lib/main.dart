
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DigitalBusinessCardApp());
}

class DigitalBusinessCardApp extends StatelessWidget {
  const DigitalBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kartu Nama Digital',
      home: BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCE7F3),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage(
                    'assets/images/gmbr1.jpg',
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Ripaa',
                  style: GoogleFonts.pacifico(
                    fontSize: 40.0,
                    color: const Color(0xFF9D4568),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MAHASISWA',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20.0,
                    color: const Color(0xFF9D4568),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),

                // Card 1: Nomor telepon
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+62 8245 7375 88',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),

                // Card 2: Email
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'ifaipa88@gmail.com',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),

                // Card 3: Instagram
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '@nripa9',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),

                // Card 4: TikTok
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.music_note,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '@faaa_7',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
