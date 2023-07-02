import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.fullName, required this.email, required this.phnNo, required this.password});
  final String fullName;
  final String email;
  final String phnNo;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Full Name", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(width: 30),
                Text("Email", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(width: 30),
                Text("Phone No", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(width: 30),
                Text("Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(fullName , style: const TextStyle(fontSize: 25)),
                const SizedBox(width: 30),
                Text(email, style: const TextStyle(fontSize: 25)),
                const SizedBox(width: 30),
                Text(phnNo, style: const TextStyle(fontSize: 25)),
                const SizedBox(width: 30),
                Text(password, style: const TextStyle(fontSize: 25)),
              ]
            )
          ],
        ),
      ),
    );
  }
}