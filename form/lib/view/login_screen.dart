import 'package:flutter/material.dart';
import 'package:form/view/register_screen.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final keys = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                  key: keys,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Login", style: TextStyle(color: Color.fromARGB(255, 33, 65, 91), fontSize: 23, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      const Text("Email Address", style: TextStyle(color: Color.fromARGB(255, 33, 65, 91),fontSize: 18)),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          hintText: ("Enter your email address"),
                          
                        ),
                        controller: emailController,
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                      const SizedBox(height: 30),
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
                          hintText: ("Enter your password"),
                          
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        }
                      ),
                      const Row(
                        children: [
                          SizedBox(height: 40, width: 100),
                          Text("Forget Password?", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 33, 65, 91))),
                        ],
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
                      
                      }
                    }, 
                    child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 132, 133, 134))),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context){
                      return  Register();
                      }));
                    }, 
                    child: const Text("Create one", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 33, 65, 91))))
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}