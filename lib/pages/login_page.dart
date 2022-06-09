import 'package:flutter/material.dart';
import 'package:haseeb_ur_rehman/pages/tips_page.dart';
import 'package:haseeb_ur_rehman/widgets/reuse_container_button.dart';
import 'package:haseeb_ur_rehman/widgets/reuse_container_button_icon.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text('Login',
                style: TextStyle(
                  fontSize : 30,
                  color : Color(0xff4A4B4D)
                )
                ),
                SizedBox(height: 15.0),
                Text('Add your details to login',
                style: TextStyle(
                  fontSize: 15,
                 color: Color(0xff7C7D7E)
                ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  height: 56.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF2F2F2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4.0,
                        blurRadius: 2.0
                      ),
                    ]
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      border: InputBorder.none,
                      hintText: 'Your Email',
                      hintStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  height: 56.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF2F2F2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4.0,
                        blurRadius: 2.0
                      ),
                    ]
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                ReUserContainerButton(
                  onclick: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TipsPage()
                    ));
                  },
                    color: Color(0xffFC6011),
                    name: 'Login'),
                SizedBox(height: 15),
                Text('Forgot your password?',
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 17,
                ),
                ),
                SizedBox(height: 30),
                Text('or Login With',
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                  fontSize: 17,
                ),
                ),
                SizedBox(height: 15.0),
                ReUserContainerButtonIcon(
                  onclick: (){},
                    color: Color(0xff367FC0),
                    name: 'Login with Facebook',
                    icon: FontAwesomeIcons.facebook,),
                SizedBox(height: 20),
                ReUserContainerButtonIcon(
                  onclick: (){},
                    color: Color(0xffDD4B39),
                    name: 'Login with Google',
                    icon:  FontAwesomeIcons.google),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account? "),
                    TextButton(
                        onPressed: (){},
                        child: Text('Sign Up',
                        style: TextStyle(
                          color: Color(0xffFC6011)
                        ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
