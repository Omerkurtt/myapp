import 'package:flutter/material.dart';
import 'package:myapp/epin.dart';

void main() {
  runApp(const OmerEpin());
}

class OmerEpin extends StatelessWidget {
  const OmerEpin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' OmerEpin ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' OmerEpin'),
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
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Urunler.urunler.length,
          itemBuilder: (context, index) {
            return urunlerOlustur(Urunler.urunler[index]);
          },
        ),
      ),
    );
  }

  Widget urunlerOlustur(Urunler urun) {
    return Card(
      child: Column(
        children: [
          Image(image: AssetImage(urun.urunfotografi)),
          Text(urun.urunadi),
        ],
      ),
    );
  }
}
