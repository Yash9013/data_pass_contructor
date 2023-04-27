import 'package:flutter/material.dart';

class Cryptodata extends StatefulWidget {
  final String img, name, price;

  const Cryptodata(
      {Key? key, required this.img, required this.name, required this.price})
      : super(key: key);

  @override
  State<Cryptodata> createState() => _CryptodataState();
}

class _CryptodataState extends State<Cryptodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Crypto Information",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              widget.img,
              height: 100,
              width: 100,
            ), SizedBox(height: 20,),
            Text(
              "Name - ${widget.name}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),SizedBox(height: 15,),
            Text(
              "Price - ${widget.price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
