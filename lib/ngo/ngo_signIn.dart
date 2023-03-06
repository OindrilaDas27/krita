import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:krita/ngo/formInput_Card.dart';
import 'package:krita/ngo/ngo_signup.dart';

const color = Color.fromARGB(230, 247, 149, 30);

class Ngo_SignInPage extends StatefulWidget {
  const Ngo_SignInPage({super.key});

  @override
  State<Ngo_SignInPage> createState() => _Ngo_SignInPageState();
}

class _Ngo_SignInPageState extends State<Ngo_SignInPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: color,
          iconSize: 30,
          //replace with our own icon data.
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: const Text(
                'Krita',
                style:
                    TextStyle(fontFamily: 'SAMAN', color: color, fontSize: 105),
              ),
            ),

            //SignUp Container starts here
            SizedBox(
              height: MediaQuery.of(context).size.height- 279,
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(243, 243, 243, 243),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40.0),
                        bottom: Radius.circular(0.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(34, 0, 0, 0),
                        offset: Offset(10, -10),
                        blurRadius: 15,
                        spreadRadius: 6.0,
                      )
                    ],
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InputCard(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'User Name',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(127, 117, 117, 117),
                                        fontSize: 14,
                                      ),
                                    ),
                                ),
                              ),
                            ),
                            InputCard(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(127, 117, 117, 117),
                                        fontSize: 14,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,

                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          label: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor: color,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                        'or sign in with',
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Logo(Logos.facebook_logo),

                          Logo(Logos.google),

                          Icon(FontAwesome.phone),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Ngo_SignUpPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign Up here',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
