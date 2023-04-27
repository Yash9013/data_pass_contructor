import 'package:cryptoapp/cryptodata.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Crypto Information",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              info(context,"1.jpg", "Bitcoin", "\$40000"),
              SizedBox(
                height: 20,
              ),
              info(context,"2.jpg", "Ethereum", "\$3500"),
              SizedBox(
                height: 20,
              ),
              info(context,"3.jpg", "Solana", "\$100"),
              SizedBox(
                height: 20,
              ),
              info(context,"4.jpg", "Luna", "\$90"),
              SizedBox(
                height: 20,
              ),
              info(context,"5.jpg", "Binance Coin", "\$400"),
              SizedBox(
                height: 20,
              ),
              info(context,"6.jpg", "Fantom Opera", "\$1.2"),
              SizedBox(
                height: 20,
              ),
              info(context,"7.jpg", "Polkadot", "\$21"),
              SizedBox(
                height: 20,
              ),
              info(context,"8.jpg", "Algorand", "\$0.9"),
              SizedBox(
                height: 20,
              ),
              info(context,"9.jpg", "Cardano", "\$0.95"),
              SizedBox(
                height: 20,
              ),
              info(context,"10.jpg", "Avalanche", "\$79"),
            ],
          ),
        ));
  }
}

Widget info(BuildContext context,String img, String name, String price) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
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
