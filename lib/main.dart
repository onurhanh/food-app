import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Yemek Tarifi"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [

          SizedBox(child: Image.asset("resimler/yemekresim.png"),width: ekranGenisligi,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: print("beğenildi"), child: Yazi("Begen", ekranGenisligi/25)),
            ],
          ),
        ],
      )

    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;

  Yazi(this.icerik, this.yaziBoyut);

  double yaziBoyut;

  const Yazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}


