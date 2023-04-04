import 'package:flutter/material.dart';
import 'package:quick_wheels/signup/view/signup_page.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: use_decorated_box
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/new.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.all(32),
            child: Center(
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hi!',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field is mandatory';
                          }
                        },
                        controller: _emailController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field is mandatory';
                          }
                        },
                        controller: _passwordController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.security),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () async {
                             if(_formkey.currentState!.validate()){
                              email:  _emailController.text;
                              password: _passwordController.text;
                             }
                            },
                            child: Text('Login')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?')),
                        ],
                      ),
                      Text(
                        '-Or-',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SocialLoginButton(
                        buttonType: SocialLoginButtonType.facebook,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SocialLoginButton(
                        buttonType: SocialLoginButtonType.google,
                        onPressed: () {},
                      ),
                      Row(
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text('Sign up')),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
