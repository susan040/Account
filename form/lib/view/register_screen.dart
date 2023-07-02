import 'package:flutter/material.dart';
import 'package:form/view/home.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final keys = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phnNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 25, bottom: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                  key: keys,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("New Account", style: TextStyle(color: Color.fromARGB(255, 33, 65, 91), fontSize: 23, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      const Text("Let's start with creating an account", style: TextStyle(color: Color.fromARGB(255, 33, 65, 91), fontSize: 16)),
                      const SizedBox(height: 20),
                      const Text("Full Name", style: TextStyle(color: Color.fromARGB(255, 33, 65, 91),fontSize: 18)),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          hintText: ("Enter your full name"),
                          
                        ),
                        controller: fullNameController,
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                    
                      const SizedBox(height: 20),
                      const Text("Email Address", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 33, 65, 91))),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          hintText: ("abc@gmail.com"),
                          
                        ),
                        controller: emailController,
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 20),
                      const Text("Phone Number", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 33, 65, 91))),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          hintText: ("+977 000 00 00 000"),
                          
                        ),
                        controller: phnNoController,
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 20),
                      const Text("Password", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 33, 65, 91))),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          hintText: ("Enter password"),
                          
                        ),
                        controller: passwordController,
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 65, 91),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)
                        )
                      ),
                      onPressed: ()async{
                      if (keys.currentState!.validate()){
                        Navigator.push(context,
                      MaterialPageRoute(builder:(context){
                      return  Home(fullName: fullNameController.text, email: emailController.text, phnNo: phnNoController.text, password: passwordController.text);
                      }));
                      }
                    }, 
                    child: const Text("Create Account", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 132, 133, 134))),
                    TextButton(onPressed: (){
        
                    }, 
                    child: const Text("Log in", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 33, 65, 91))))
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}