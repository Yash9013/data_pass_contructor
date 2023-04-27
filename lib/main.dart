import 'package:cryptoapp/Forgotpage.dart';
import 'package:cryptoapp/Listdata.dart';
import 'package:cryptoapp/Signuppage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "11.jpg",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Welcome to EWCL",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ewcl",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                "Welcome To EWCL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: "Mobile Number",
                  hintText: "Mobile Number",
                ),
              ),SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: "password",
                  hintText: "password",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListAdd()));
                  },
                  child: Text("Login")),
              SizedBox(
                height: 11,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    "Create New Account - Signup",
                    style: TextStyle(fontSize: 15),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPage()));
                  },
                  child: Text(
                    "Fogot Password?",
                    style: TextStyle(fontSize: 10),
                  )),
              SizedBox(
                height: 55,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListAdd()));
                  },
                  child: Text(
                    "Information",
                    style: TextStyle(fontSize: 21),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
