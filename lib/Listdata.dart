import 'package:flutter/material.dart';

import 'cryptodata.dart';

class ListAdd extends StatefulWidget {
  const ListAdd({Key? key}) : super(key: key);

  @override
  State<ListAdd> createState() => _ListAddState();
}

class _ListAddState extends State<ListAdd> {
  List<String> image = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
  ];
  List<String> name = [
    "Bitcoin",
    "Ethereum",
    "Solana",
    "Luna-Terra",
    "Binance Coin",
    "Fantom Opera",
    "Polkadot",
  ];
  List<String> price = [
    "\$40000",
    "\$3500",
    "\$100",
    "\$90",
    "\$400",
    "\$1.2",
    "\$21",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Crypto Info",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        body: ListView.builder(
            itemCount: image.length,
            scrollDirection: Axis.vertical,
            itemBuilder: ((context, index) {
              return info(context, image[index], name[index], price[index]);
            })));
  }
}

Widget info(BuildContext context, String img, String name, String price) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Cryptodata(img: img, name: name, price: price)));
        },
        child: Row(
          children: [
            Image.asset(
              img,
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 35,
            ),
            Column(
              children: [
                Text(
                  "Name = $name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Price = $price",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
