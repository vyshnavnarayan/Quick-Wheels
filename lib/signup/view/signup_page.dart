import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quick_wheels/signup/view/signupRepo.dart';

class Signup extends StatelessWidget {
   Signup({super.key});

final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _secondNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController = TextEditingController();

final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: use_decorated_box
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/new.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          height: 600,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 100, 10, 120),
                                    ),
                                    
                              ),
                              
                                 ],
                               ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text('Create an Account here',style: TextStyle(color: Color.fromARGB(255, 101, 107, 166)),),
                                 ],
                               ),
                              const SizedBox(
                                height: 20,
                              ),
                               TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your first Name';
                                  }
                                },
                                controller: _firstNameController,
                                decoration: InputDecoration(
                                  hintText: 'First name',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your second Name';
                                  }
                                },
                                controller:_secondNameController,
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your Email';
                                  }
                                },
                                controller: _emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please enter your Password';
                                  }
                                },
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.security),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return 'Please Confirm your Password';
                                  }
                                },
                                controller: _confirmPasswordController,
                                decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.security),
                                ),
                              ),
                              //  SizedBox(
                              //   height: 5,
                              // ),
                              SizedBox(
                                height: 40,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if(_formkey.currentState!.validate()){
                                      await SignupReppo().createUser(
                                        
                                      _emailController.text,
                                      _passwordController.text,
                                      context,
                                      _firstNameController.text,
                                        _secondNameController.text,
                                      _confirmPasswordController.text
                                      
                                     );
                                    }
                                  },
                                  child: const Text('REGISTER'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
