import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EWCL",style: TextStyle(fontSize: 25),),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 8,),
          Text("Welcome To EWCL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),

          SizedBox(height: 50,),

          TextField(decoration: InputDecoration(labelText: "New Password", hintText: "New Password"),),
          TextField(decoration: InputDecoration(labelText: "Confirm Password", hintText: "Confirm Password"),),

          SizedBox(height: 12,),

          ElevatedButton(onPressed: (){}, child: Text("Change Password"))
        ]),
      ),
    );
  }
}
