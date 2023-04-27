import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool selected = false;
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
        child: Column(children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "Welcome To EWCL",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Name",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Email",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Phone Number",
              hintText: "Phone Number",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Password",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Confirm Password",
              hintText: "Confirm Password",
            ),
          ),
         CheckboxListTile(controlAffinity: ListTileControlAffinity.leading,
             title: Text("Accept T&C",style: TextStyle(fontSize: 18),),
             value: selected, onChanged: (value){
           setState(() {
             selected = value!;
           });
         }),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Signup")),
        ]),
      ),
    );
  }
}
