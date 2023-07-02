import 'package:flutter/material.dart';
import 'package:form/view/example.dart';
import 'package:form/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: const Text("Susan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context){
                  return  Login();
                }));
              }, 
              child: const Text("Press", style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context){
                  return  Example();
                }));
              }, 
              child: const Text("Verification", style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
          ],
        ),
      ),
    );
  }
}
